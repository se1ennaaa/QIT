import 'package:chelnok_mob/data/models/fulfilment_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fulfilment_providers.g.dart';
part 'fulfilment_providers.freezed.dart';

@freezed
class FulfilmentListState with _$FulfilmentListState {
  const factory FulfilmentListState({
    @Default(AsyncValue.loading()) final AsyncValue<List<FulfilmentModel>> list,
    @Default(FulfilmentParamsModel()) final FulfilmentParamsModel params,
    @Default(false) final bool isPageNotFound,
  }) = _FulfilmentListState;

  factory FulfilmentListState.initial() => FulfilmentListState();
}

@riverpod
class FulfilmentList extends _$FulfilmentList {
  @override
  FulfilmentListState build({FulfilmentParamsModel? params}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (params != null) state = state.copyWith(params: params);
      fetchFulfilmentList(params);
    });

    return FulfilmentListState();
  }

  void fetchFulfilmentList(FulfilmentParamsModel? params) async {
    final response = await ref
        .read(fulfilmentRepoProvider)
        .fetchFulfilmentList(state.params);
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

  void filter(FulfilmentParamsModel params) async {
    state = state.copyWith(
      params: state.params.copyWith(
        page: params.page,
        searchText: params.searchText ?? state.params.searchText,
        categoryId: params.categoryId ?? state.params.categoryId,
      ),
      list: AsyncValue.loading(),
    );

    final response = await ref
        .read(fulfilmentRepoProvider)
        .fetchFulfilmentList(state.params);
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
        list: const AsyncValue<List<FulfilmentModel>>.loading()
            .copyWithPrevious(state.list));

    final response = await ref
        .read(fulfilmentRepoProvider)
        .fetchFulfilmentList(state.params);
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
        .read(fulfilmentRepoProvider)
        .fetchFulfilmentList(state.params.copyWith(page: 1));
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

  void toogleFavorite(int id, {bool isRemove = false}) {
    state = state.copyWith(
      list: AsyncValue.data(state.list.value!.map((e) {
        if (e.id == id) {
          return e.copyWith(isLike: !e.isLike);
        } else {
          return e;
        }
      }).toList()),
    );
    if (isRemove) {
      state = state.copyWith(
        list: AsyncValue.data(
            state.list.value!.where((element) => element.id != id).toList()),
      );
    }
  }
}

@riverpod
class FulfilmentDetails extends _$FulfilmentDetails {
  @override
  Future<FulfilmentDetailsModel> build(int id) async {
    final response =
        await ref.read(fulfilmentRepoProvider).fetchFulfilmentDetails(id);

    if (response.isSuccessful) {
      return response.result!;
    } else {
      throw response.errorData;
    }
  }

  void toogleFavorite() {
    state =
        AsyncValue.data(state.value!.copyWith(isLike: !state.value!.isLike));
  }
}
