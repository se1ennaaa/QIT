// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfilment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fulfilmentListHash() => r'b53caa0f42ef53144c8eb5e960fe2b500dae2ad7';

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

abstract class _$FulfilmentList
    extends BuildlessAutoDisposeNotifier<FulfilmentListState> {
  late final FulfilmentParamsModel? params;

  FulfilmentListState build({
    FulfilmentParamsModel? params,
  });
}

/// See also [FulfilmentList].
@ProviderFor(FulfilmentList)
const fulfilmentListProvider = FulfilmentListFamily();

/// See also [FulfilmentList].
class FulfilmentListFamily extends Family<FulfilmentListState> {
  /// See also [FulfilmentList].
  const FulfilmentListFamily();

  /// See also [FulfilmentList].
  FulfilmentListProvider call({
    FulfilmentParamsModel? params,
  }) {
    return FulfilmentListProvider(
      params: params,
    );
  }

  @override
  FulfilmentListProvider getProviderOverride(
    covariant FulfilmentListProvider provider,
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
  String? get name => r'fulfilmentListProvider';
}

/// See also [FulfilmentList].
class FulfilmentListProvider extends AutoDisposeNotifierProviderImpl<
    FulfilmentList, FulfilmentListState> {
  /// See also [FulfilmentList].
  FulfilmentListProvider({
    FulfilmentParamsModel? params,
  }) : this._internal(
          () => FulfilmentList()..params = params,
          from: fulfilmentListProvider,
          name: r'fulfilmentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fulfilmentListHash,
          dependencies: FulfilmentListFamily._dependencies,
          allTransitiveDependencies:
              FulfilmentListFamily._allTransitiveDependencies,
          params: params,
        );

  FulfilmentListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final FulfilmentParamsModel? params;

  @override
  FulfilmentListState runNotifierBuild(
    covariant FulfilmentList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(FulfilmentList Function() create) {
    return ProviderOverride(
      origin: this,
      override: FulfilmentListProvider._internal(
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
  AutoDisposeNotifierProviderElement<FulfilmentList, FulfilmentListState>
      createElement() {
    return _FulfilmentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FulfilmentListProvider && other.params == params;
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
mixin FulfilmentListRef on AutoDisposeNotifierProviderRef<FulfilmentListState> {
  /// The parameter `params` of this provider.
  FulfilmentParamsModel? get params;
}

class _FulfilmentListProviderElement extends AutoDisposeNotifierProviderElement<
    FulfilmentList, FulfilmentListState> with FulfilmentListRef {
  _FulfilmentListProviderElement(super.provider);

  @override
  FulfilmentParamsModel? get params =>
      (origin as FulfilmentListProvider).params;
}

String _$fulfilmentDetailsHash() => r'4da0a1e273c320258d7d145cae71d600be5b471b';

abstract class _$FulfilmentDetails
    extends BuildlessAutoDisposeAsyncNotifier<FulfilmentDetailsModel> {
  late final int id;

  FutureOr<FulfilmentDetailsModel> build(
    int id,
  );
}

/// See also [FulfilmentDetails].
@ProviderFor(FulfilmentDetails)
const fulfilmentDetailsProvider = FulfilmentDetailsFamily();

/// See also [FulfilmentDetails].
class FulfilmentDetailsFamily
    extends Family<AsyncValue<FulfilmentDetailsModel>> {
  /// See also [FulfilmentDetails].
  const FulfilmentDetailsFamily();

  /// See also [FulfilmentDetails].
  FulfilmentDetailsProvider call(
    int id,
  ) {
    return FulfilmentDetailsProvider(
      id,
    );
  }

  @override
  FulfilmentDetailsProvider getProviderOverride(
    covariant FulfilmentDetailsProvider provider,
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
  String? get name => r'fulfilmentDetailsProvider';
}

/// See also [FulfilmentDetails].
class FulfilmentDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    FulfilmentDetails, FulfilmentDetailsModel> {
  /// See also [FulfilmentDetails].
  FulfilmentDetailsProvider(
    int id,
  ) : this._internal(
          () => FulfilmentDetails()..id = id,
          from: fulfilmentDetailsProvider,
          name: r'fulfilmentDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fulfilmentDetailsHash,
          dependencies: FulfilmentDetailsFamily._dependencies,
          allTransitiveDependencies:
              FulfilmentDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  FulfilmentDetailsProvider._internal(
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
  FutureOr<FulfilmentDetailsModel> runNotifierBuild(
    covariant FulfilmentDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(FulfilmentDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: FulfilmentDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<FulfilmentDetails,
      FulfilmentDetailsModel> createElement() {
    return _FulfilmentDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FulfilmentDetailsProvider && other.id == id;
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
mixin FulfilmentDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<FulfilmentDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _FulfilmentDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FulfilmentDetails,
        FulfilmentDetailsModel> with FulfilmentDetailsRef {
  _FulfilmentDetailsProviderElement(super.provider);

  @override
  int get id => (origin as FulfilmentDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
