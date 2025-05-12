import 'package:chelnok_mob/data/models/token/token.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

part 'login_providers.g.dart';
part 'login_providers.freezed.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  roleIsNotSelectedGoogle,
  roleIsNotSelectedYandex,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isRoleIsNotSelectedGoogle => this == roleIsNotSelectedGoogle;
  bool get isRoleIsNotSelectedYandex => this == roleIsNotSelectedYandex;
  bool get isError => this == error;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    String? error,
    String? googleAccessToken,
    Map<String, dynamic>? yandexData,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
        status: LoginStatus.initial,
      );
}

@riverpod
class Login extends _$Login {
  @override
  LoginState build() {
    return LoginState.initial();
  }

  final _googleSignIn = GoogleSignIn(
    scopes: ['email'],
  );

  Future<void> login(String email, String password) async {
    state = const LoginState(status: LoginStatus.loading);
    final response = await ref.read(userRepoProvider).login(email, password);
    if (response.isSuccessful) {
      state = const LoginState(status: LoginStatus.success);
      ref.read(userProvider.notifier).authenticate(response.result!);
      return;
    }
    state = LoginState(
      status: LoginStatus.error,
      error: response.errorData['message'],
    );
  }

  Future<void> googleSignIn() async {
    state = const LoginState(status: LoginStatus.loading);
    final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      state = const LoginState(status: LoginStatus.initial);
      return;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    // final name = googleUser.displayName;
    // final idToken = (await userCredential.user?.getIdToken(true))!;
    // final email = userCredential.user?.email;

    if (userCredential.credential?.accessToken == null) {
      state = const LoginState(status: LoginStatus.error);
      return;
    }
    state = state.copyWith(
      googleAccessToken: userCredential.credential?.accessToken,
    );

    sendGoogleUserCredentials(null);
  }

  Future<void> yandexSignIn() async {
    state = const LoginState(status: LoginStatus.loading);
    try {
      final response = await ref.read(userRepoProvider).yandexSignIn(
            "060ff0361a22407aadc3aced63c8d6d1",
            "a2b9da3671604050b4ca587d3dec2ea2",
            "chelnokmob://oauth/callback",
          );

      if (response.isSuccessful) {
        if (response.result['id'] is String) {
          response.result['id'] = int.tryParse(response.result['id']);
        }
        state = state.copyWith(
          yandexData: response.result,
        );
        sendYandexUserCredentials(null);
      } else {
        state = LoginState(status: LoginStatus.error);
      }
    } catch (e) {
      state = LoginState(status: LoginStatus.error);
    }
  }

  Future<void> sendGoogleUserCredentials(String? role) async {
    state = state.copyWith(status: LoginStatus.loading);
    final response = await ref
        .read(userRepoProvider)
        .sendGoogleUserCredentials(state.googleAccessToken!, role);
    if (response.isSuccessful) {
      ref.read(userProvider.notifier).authenticate(response.result!);
      return;
    } else {
      state = state.copyWith(status: LoginStatus.roleIsNotSelectedGoogle);
    }
  }

  Future<void> sendYandexUserCredentials(String? role) async {
    state = state.copyWith(status: LoginStatus.loading);
    final response = await ref
        .read(userRepoProvider)
        .sendYandexUserCredentials(state.yandexData!, role);
    if (response.isSuccessful) {
      ref.read(userProvider.notifier).authenticate(response.result!);
      return;
    } else {
      state = state.copyWith(status: LoginStatus.roleIsNotSelectedYandex);
    }
  }

  Future<void> appleIdSignIn() async {
    state = state.copyWith(status: LoginStatus.loading);
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      if (appleCredential.userIdentifier != null) {
        final credential = OAuthProvider('apple.com').credential(
          accessToken: appleCredential.authorizationCode,
          idToken: appleCredential.identityToken,
        );
        AppleAuthProvider.credential(appleCredential.authorizationCode);
        final userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        final idToken = await userCredential.user?.getIdToken();
        final email = userCredential.user?.email;
        final name = userCredential.user?.displayName;

        // await sendUserCredentials(
        //   UserCredentialsModel(
        //     idToken: idToken,
        //     name: name,
        //     email: email,
        //   ),
        // );
        ref.read(userProvider.notifier).authenticate(Token(
            access:
                'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjY0LCJlbWFpbCI6Im51cnN1bHRhbmp1bWFzaG92dkBnbWFpbC5jb20iLCJyb2xlIjoic2V3aW5nX3dvcmtzaG9wIiwiaWF0IjoxNzM5ODkyNzczLCJleHAiOjE3NDI0ODQ3NzN9.nSDogIw4XilmGC-j12R3vlf_ERa-CK2ErEatRcPR_xU',
            refresh: 'refresh'));
      }
    } on SignInWithAppleException {
      print('SignInWithAppleException');

      state = state.copyWith(status: LoginStatus.initial);
      // print('sign in with apple $e');
    } catch (e) {
      // print(e.toString());
      print(e);
    }
  }
}
