import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:chelnok_mob/data/models/dordoi_container_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dordoi_market_providers.g.dart';
part 'dordoi_market_providers.freezed.dart';

@freezed
class DordoiContainerListState with _$DordoiContainerListState {
  const factory DordoiContainerListState({
    @Default(AsyncValue.loading())
    final AsyncValue<List<DordoiContainerModel>> list,
    @Default(DordoiContainerParamsModel())
    final DordoiContainerParamsModel params,
    @Default(false) final bool isPageNotFound,
  }) = _DordoiContainerListState;

  factory DordoiContainerListState.initial() => DordoiContainerListState();
}

@riverpod
class DordoiContainerList extends _$DordoiContainerList {
  @override
  DordoiContainerListState build({DordoiContainerParamsModel? params}) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (params != null) state = state.copyWith(params: params);
      fetchDordoiContainerList(params);
    });

    return DordoiContainerListState();
  }

  void fetchDordoiContainerList(DordoiContainerParamsModel? params) async {
    final response = await ref
        .read(dordoiMarketRepoProvider)
        .fetchDordoiContainerList(state.params);
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

  void filter(DordoiContainerParamsModel params) async {
    state = state.copyWith(
      params: state.params.copyWith(
        page: params.page,
        searchText: params.searchText ?? state.params.searchText,
        categoryId: params.categoryId ?? state.params.categoryId,
      ),
      list: AsyncValue.loading(),
    );

    final response = await ref
        .read(dordoiMarketRepoProvider)
        .fetchDordoiContainerList(state.params);
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
        list: const AsyncValue<List<DordoiContainerModel>>.loading()
            .copyWithPrevious(state.list));

    final response = await ref
        .read(dordoiMarketRepoProvider)
        .fetchDordoiContainerList(state.params);
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
        .read(dordoiMarketRepoProvider)
        .fetchDordoiContainerList(state.params.copyWith(page: 1));
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
Future<ApiResponse> createDordoiContainer(Ref ref) async {
  final state = ref.read(dordoiContainerModelProvider);
  final response =
      await ref.read(dordoiMarketRepoProvider).createDordoiContainer(state);
  return response;
}

@riverpod
Future<ApiResponse> editDordoiContainer(Ref ref) async {
  final state = ref.read(dordoiContainerModelProvider);
  final response =
      await ref.read(dordoiMarketRepoProvider).createDordoiContainer(state);
  return response;
}

final dordoiContainerModelProvider = StateProvider<DordoiContainerModel>(
  (ref) => DordoiContainerModel(
    id: -1,
    models: [
      ModelItemModel(),
    ],
  ),
);
