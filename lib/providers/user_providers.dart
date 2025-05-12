import 'package:chelnok_mob/data/models/token/token.dart';
import 'package:chelnok_mob/providers/dependencies.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/storage/local_storage.dart';

import '../data/models/user_model.dart';
import 'fcm_providers.dart';
part 'user_providers.g.dart';
part 'user_providers.freezed.dart';

enum AuthStatus {
  authenticated,
  unauthenticated;

  bool get isAuth => this == authenticated;
  bool get isUnauth => this == unauthenticated;
}

enum UserUpdateStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(AuthStatus.unauthenticated) AuthStatus authStatus,
    @Default(AsyncValue.loading()) final AsyncValue<UserModel> userProfile,
    @Default(UserUpdateStatus.initial) UserUpdateStatus updateProfileStatus,
    @Default(false) final bool isAvatarUpdated,
    final String? errorMessage,
  }) = _UserState;

  factory UserState.initial() => const UserState();

}

@riverpod
class User extends _$User {
  LocalStorage get localStorage => ref.read(localStorageProvider);

  @override
  UserState build() {
    if (localStorage.token != null) {
      fetchUserProfile();
    }

    return UserState(
      authStatus: localStorage.token != null
          ? AuthStatus.authenticated
          : AuthStatus.unauthenticated,
    );
  }

  void authenticate(Token token) {
    localStorage.token = token;
    state = state.copyWith(authStatus: AuthStatus.authenticated);
    ref.read(createFCMProvider());
  }

  void unauthenticate() {
    localStorage.token = null;
    state = state.copyWith(authStatus: AuthStatus.unauthenticated);

    // ref.read(deleteFCMProvider);
  }

  Future<void> fetchUserProfile() async {
    final response = await ref.read(userRepoProvider).profile();

    if (response.isSuccessful) {
      state = state.copyWith(userProfile: AsyncValue.data(response.result!));
    } else {
      state = state.copyWith(
        userProfile: AsyncValue.error(
          response.errorData,
          StackTrace.current,
        ),
      );
    }
  }

  Future<void> updateUserProfile(UserModel userUpdateModel,
      {bool isAvatarUpdated = false}) async {
    state = state.copyWith(updateProfileStatus: UserUpdateStatus.loading);
    final response = await ref
        .read(userRepoProvider)
        .updateUserProfile(model: userUpdateModel);

    if (response.isSuccessful) {
      state = state.copyWith(
        updateProfileStatus: UserUpdateStatus.success,
        userProfile: AsyncValue.data(state.userProfile.value!.copyWith(
          avatarUrl: response.result,
          city: userUpdateModel.city,
          name: userUpdateModel.name ?? state.userProfile.value!.name,
          phone: userUpdateModel.phone ?? state.userProfile.value!.phone,
          surname: userUpdateModel.surname ?? state.userProfile.value!.surname,
        )),
        isAvatarUpdated: isAvatarUpdated,
      );
    } else {
      if (response.statusCode == 413) {
        state = state.copyWith(
          updateProfileStatus: UserUpdateStatus.error,
          errorMessage: 'Изображение слишком большое',
          isAvatarUpdated: isAvatarUpdated,
        );
      } else {
        state = state.copyWith(
          updateProfileStatus: UserUpdateStatus.error,
          errorMessage: response.errorData.toString(),
          isAvatarUpdated: isAvatarUpdated,
        );
      }
    }
  }
}
