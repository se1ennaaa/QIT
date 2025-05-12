import 'package:chelnok_mob/data/models/notification_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_providers.g.dart';
part 'notification_providers.freezed.dart';

@freezed
class NotificationListState with _$NotificationListState {
  const factory NotificationListState({
    @Default(AsyncValue.loading())
    final AsyncValue<List<NotificationModel>> list,
    @Default(NotificationParamsModel()) final NotificationParamsModel params,
    @Default(false) final bool isPageNotFound,
  }) = _NotificationListState;

  factory NotificationListState.initial() => NotificationListState();
}

@riverpod
class NotificationList extends _$NotificationList {
  @override
  NotificationListState build({NotificationParamsModel? params}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (params != null) state = state.copyWith(params: params);
      fetchNotificationList(params);
    });

    return NotificationListState();
  }

  void fetchNotificationList(NotificationParamsModel? params) async {
    final response =
        await ref.read(userRepoProvider).fetchNotificationList(state.params);
    if (!response.isSuccessful) {
      state = state.copyWith(
        list: AsyncValue.error(response.errorData, StackTrace.current),
      );
    } else {
      state = state.copyWith(
        list: AsyncValue.data(response.result!),
        params: state.params.copyWith(page: 2),
      );
    }
  }

  void filter(NotificationParamsModel params) async {
    state = state.copyWith(
      params: state.params.copyWith(
        page: params.page,
        searchText: params.searchText ?? state.params.searchText,
        categoryId: params.categoryId ?? state.params.categoryId,
      ),
      list: AsyncValue.loading(),
    );

    final response =
        await ref.read(userRepoProvider).fetchNotificationList(state.params);
    if (!response.isSuccessful) {
      state = state.copyWith(
        list: AsyncValue.error(
          response.errorData,
          StackTrace.current,
        ),
        isPageNotFound: false,
      );
    } else {
      state = state.copyWith(
        list: AsyncValue.data(response.result!),
        params: state.params.copyWith(page: 2),
      );
    }
  }

  void loadMore() async {
    if (state.list.isLoading ||
        state.list.isRefreshing ||
        state.list.isReloading ||
        state.isPageNotFound) {
      return;
    }

    state = state.copyWith(
        list: const AsyncValue<List<NotificationModel>>.loading()
            .copyWithPrevious(state.list));

    final response =
        await ref.read(userRepoProvider).fetchNotificationList(state.params);
    if (!response.isSuccessful) {
      state = state.copyWith(
        list: AsyncValue.data(
          [...?state.list.value],
        ),
        isPageNotFound: true,
      );
    } else {
      state = state.copyWith(
        list: AsyncValue.data(
          [...?state.list.value, ...?response.result],
        ),
        params: state.params.copyWith(page: (state.params.page ?? 1) + 1),
      );
    }
  }

  void refresh() async {
    final response = await ref
        .read(userRepoProvider)
        .fetchNotificationList(state.params.copyWith(page: 1));
    if (response.isSuccessful) {
      state = state.copyWith(
        list: AsyncValue.data(response.result!),
        isPageNotFound: false,
        params: state.params.copyWith(page: 2),
      );
    } else {
      state = state.copyWith(
        list: AsyncValue.error(response.errorData, StackTrace.current),
      );
    }
  }
}

@riverpod
class NotificationDetails extends _$NotificationDetails {
  @override
  Future<NotificationDetailsModel> build(int id) async {
    final response =
        await ref.read(userRepoProvider).fetchNotificationDetails(id);

    if (response.isSuccessful) {
      return response.result!;
    } else {
      throw response.errorData;
    }
  }
}
