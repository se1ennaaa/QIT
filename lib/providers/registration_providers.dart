import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:chelnok_mob/providers/user_providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/models/registration_model.dart';

part 'registration_providers.g.dart';
part 'registration_providers.freezed.dart';

enum RegistrationStatus {
  initial,
  loading,
  error,
  registered,
  codeSend,
  codeVerify;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isError => this == error;
  bool get isRegistered => this == registered;
  bool get isCodeSend => this == codeSend;
  bool get isCodeVerify => this == codeVerify;
}

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required RegistrationStatus status,
    @Default(RegistrationModel()) RegistrationModel model,
    String? error,
  }) = _RegistrationState;

  factory RegistrationState.initial() => const RegistrationState(
        status: RegistrationStatus.initial,
      );
}

@riverpod
class Registration extends _$Registration {
  @override
  RegistrationState build() {
    return RegistrationState.initial();
  }

  Future<void> register() async {
    state = state.copyWith(status: RegistrationStatus.loading);
    final response = await ref.read(userRepoProvider).register(state.model);
    if (response.isSuccessful) {
      ref.read(userProvider.notifier).authenticate(response.result!);
      state = state.copyWith(
        status: RegistrationStatus.registered,
      );
      state = state.copyWith(status: RegistrationStatus.initial);

      return;
    }

    state = state.copyWith(
      status: RegistrationStatus.error,
      error: response.errorData.toString(),
    );
  }

  Future<void> codeSend(String email) async {
    state = state.copyWith(status: RegistrationStatus.loading);
    final response = await ref.read(userRepoProvider).sendCode(email);

    if (response.isSuccessful
        // temporarily changed
        &&
        response.result as bool == false) {
      state = state.copyWith(
        status: RegistrationStatus.codeSend,
        model: state.model.copyWith(email: email),
      );
      state = state.copyWith(status: RegistrationStatus.initial);
      return;
    }
    state = state.copyWith(
      status: RegistrationStatus.error,
      error: 'Такой email уже зарегистрирован',
      // temporarily changed
      //response.errorData.toString(),
    );
  }

  Future<void> codeVerify(String code) async {
    state = state.copyWith(status: RegistrationStatus.loading);
    final response = await ref.read(userRepoProvider).codeVerify(code);
    if (response.isSuccessful) {
      state = state.copyWith(
        status: RegistrationStatus.codeVerify,
        model: state.model.copyWith(code: code),
      );
      state = state.copyWith(status: RegistrationStatus.initial);
      return;
    }
    state = state.copyWith(
      status: RegistrationStatus.error,
      error: response.errorData,
    );
  }

  void setRole(String role) {
    state = state.copyWith(
      model: state.model.copyWith(role: role),
    );
  }

  void setNameSurname(String name, String surname) {
    state = state.copyWith(
      model: state.model.copyWith(
        name: name,
        lastName: surname,
      ),
    );
  }

  void setPassword(String password) {
    state = state.copyWith(
      model: state.model.copyWith(password: password),
    );
  }

  void setConfirmPassword(String password) {
    state = state.copyWith(
      model: state.model.copyWith(confirmPassword: password),
    );
  }
}
