import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:chelnok_mob/data/models/feedback_model.dart';
import 'package:chelnok_mob/data/repo/order_repo.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'feedback_providers.g.dart';
part 'feedback_providers.freezed.dart';

@freezed
class FeedbackListState with _$FeedbackListState {
  const factory FeedbackListState({
    @Default(AsyncValue.loading()) final AsyncValue<List<FeedbackModel>> list,
    @Default(FeedbackParamsModel()) final FeedbackParamsModel params,
    @Default(false) final bool isPageNotFound,
  }) = _FeedbackListState;

  factory FeedbackListState.initial() => FeedbackListState();
}

@riverpod
class FeedbackList extends _$FeedbackList {
  @override
  FeedbackListState build({FeedbackParamsModel? params}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (params != null) state = state.copyWith(params: params);
      fetchFeedbackList(params);
    });

    return FeedbackListState();
  }

  void fetchFeedbackList(FeedbackParamsModel? params) async {
    final response =
        await ref.read(feedbackRepoProvider).fetchFeedbackList(state.params);
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

  void filter(FeedbackParamsModel params) async {
    state = state.copyWith(
      params: state.params.copyWith(
        page: params.page,
      ),
      list: AsyncValue.loading(),
    );

    final response =
        await ref.read(feedbackRepoProvider).fetchFeedbackList(state.params);
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
        list: const AsyncValue<List<FeedbackModel>>.loading()
            .copyWithPrevious(state.list));

    final response =
        await ref.read(feedbackRepoProvider).fetchFeedbackList(state.params);
    if (!response.isSuccessful || response.result!.isEmpty) {
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
        params: state.params.copyWith(page: (state.params.page) + 1),
        isPageNotFound: false,
      );
    }
  }

  void refresh() async {
    final response = await ref
        .read(feedbackRepoProvider)
        .fetchFeedbackList(state.params.copyWith(page: 1));
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

  void add(FeedbackModel model) {
    state = state.copyWith(
      list: AsyncValue.data(
        [...?state.list.value, model],
      ),
    );
  }
}

@riverpod
Future<ApiResponse> createFeedback(Ref ref, FeedbackModel model) async {
  final response = await ref.read(feedbackRepoProvider).createFeedback(model);
  return response;
}

enum FeedbackType {
  workshop,
  order,
  madinaMarket,
  dordoiMarket,
  fulfillment,
  manager,
  teaching,
  service,
  vacancy,
  resume,
  property,
  apparel,
  homeWorker;

  bool get isWorkshop => this == workshop;
  bool get isOrder => this == order;
  bool get isMadinaMarket => this == madinaMarket;
  bool get isDordoiMarket => this == dordoiMarket;
  bool get isFulfilment => this == fulfillment;
  bool get isManager => this == manager;
  bool get isTeaching => this == teaching;
  bool get isService => this == service;
  bool get isVacancy => this == vacancy;
  bool get isResume => this == resume;
  bool get isProperty => this == property;
  bool get isSewingEquipment => this == apparel;
  bool get isHomeWorker => this == homeWorker;
}
