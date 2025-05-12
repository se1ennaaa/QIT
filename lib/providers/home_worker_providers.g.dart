// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_worker_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeWorkerListHash() => r'a649304f825e9096780b0bc3d927c07fb4c93e12';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomeWorkerList
    extends BuildlessAutoDisposeNotifier<HomeWorkerListState> {
  late final HomeWorkerParamsModel? params;

  HomeWorkerListState build({
    HomeWorkerParamsModel? params,
  });
}

/// See also [HomeWorkerList].
@ProviderFor(HomeWorkerList)
const homeWorkerListProvider = HomeWorkerListFamily();

/// See also [HomeWorkerList].
class HomeWorkerListFamily extends Family<HomeWorkerListState> {
  /// See also [HomeWorkerList].
  const HomeWorkerListFamily();

  /// See also [HomeWorkerList].
  HomeWorkerListProvider call({
    HomeWorkerParamsModel? params,
  }) {
    return HomeWorkerListProvider(
      params: params,
    );
  }

  @override
  HomeWorkerListProvider getProviderOverride(
    covariant HomeWorkerListProvider provider,
  ) {
    return call(
      params: provider.params,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeWorkerListProvider';
}

/// See also [HomeWorkerList].
class HomeWorkerListProvider extends AutoDisposeNotifierProviderImpl<
    HomeWorkerList, HomeWorkerListState> {
  /// See also [HomeWorkerList].
  HomeWorkerListProvider({
    HomeWorkerParamsModel? params,
  }) : this._internal(
          () => HomeWorkerList()..params = params,
          from: homeWorkerListProvider,
          name: r'homeWorkerListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeWorkerListHash,
          dependencies: HomeWorkerListFamily._dependencies,
          allTransitiveDependencies:
              HomeWorkerListFamily._allTransitiveDependencies,
          params: params,
        );

  HomeWorkerListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final HomeWorkerParamsModel? params;

  @override
  HomeWorkerListState runNotifierBuild(
    covariant HomeWorkerList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(HomeWorkerList Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeWorkerListProvider._internal(
        () => create()..params = params,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<HomeWorkerList, HomeWorkerListState>
      createElement() {
    return _HomeWorkerListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeWorkerListProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomeWorkerListRef on AutoDisposeNotifierProviderRef<HomeWorkerListState> {
  /// The parameter `params` of this provider.
  HomeWorkerParamsModel? get params;
}

class _HomeWorkerListProviderElement extends AutoDisposeNotifierProviderElement<
    HomeWorkerList, HomeWorkerListState> with HomeWorkerListRef {
  _HomeWorkerListProviderElement(super.provider);

  @override
  HomeWorkerParamsModel? get params =>
      (origin as HomeWorkerListProvider).params;
}

String _$homeWorkerDetailsHash() => r'0cf0784bf034fcf91822b03c699dce73cfb06af4';

abstract class _$HomeWorkerDetails
    extends BuildlessAutoDisposeAsyncNotifier<HomeWorkerDetailsModel> {
  late final int id;

  FutureOr<HomeWorkerDetailsModel> build(
    int id,
  );
}

/// See also [HomeWorkerDetails].
@ProviderFor(HomeWorkerDetails)
const homeWorkerDetailsProvider = HomeWorkerDetailsFamily();

/// See also [HomeWorkerDetails].
class HomeWorkerDetailsFamily
    extends Family<AsyncValue<HomeWorkerDetailsModel>> {
  /// See also [HomeWorkerDetails].
  const HomeWorkerDetailsFamily();

  /// See also [HomeWorkerDetails].
  HomeWorkerDetailsProvider call(
    int id,
  ) {
    return HomeWorkerDetailsProvider(
      id,
    );
  }

  @override
  HomeWorkerDetailsProvider getProviderOverride(
    covariant HomeWorkerDetailsProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeWorkerDetailsProvider';
}

/// See also [HomeWorkerDetails].
class HomeWorkerDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    HomeWorkerDetails, HomeWorkerDetailsModel> {
  /// See also [HomeWorkerDetails].
  HomeWorkerDetailsProvider(
    int id,
  ) : this._internal(
          () => HomeWorkerDetails()..id = id,
          from: homeWorkerDetailsProvider,
          name: r'homeWorkerDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeWorkerDetailsHash,
          dependencies: HomeWorkerDetailsFamily._dependencies,
          allTransitiveDependencies:
              HomeWorkerDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  HomeWorkerDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  FutureOr<HomeWorkerDetailsModel> runNotifierBuild(
    covariant HomeWorkerDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(HomeWorkerDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeWorkerDetailsProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HomeWorkerDetails,
      HomeWorkerDetailsModel> createElement() {
    return _HomeWorkerDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeWorkerDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomeWorkerDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<HomeWorkerDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _HomeWorkerDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HomeWorkerDetails,
        HomeWorkerDetailsModel> with HomeWorkerDetailsRef {
  _HomeWorkerDetailsProviderElement(super.provider);

  @override
  int get id => (origin as HomeWorkerDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
