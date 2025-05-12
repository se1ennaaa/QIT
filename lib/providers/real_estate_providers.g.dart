// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_estate_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$realEstateListHash() => r'f883cc4ec45c2853432d39b3651169b0eb0f7d23';

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

abstract class _$RealEstateList
    extends BuildlessAutoDisposeNotifier<RealEstateListState> {
  late final RealEstateParamsModel? params;

  RealEstateListState build({
    RealEstateParamsModel? params,
  });
}

/// See also [RealEstateList].
@ProviderFor(RealEstateList)
const realEstateListProvider = RealEstateListFamily();

/// See also [RealEstateList].
class RealEstateListFamily extends Family<RealEstateListState> {
  /// See also [RealEstateList].
  const RealEstateListFamily();

  /// See also [RealEstateList].
  RealEstateListProvider call({
    RealEstateParamsModel? params,
  }) {
    return RealEstateListProvider(
      params: params,
    );
  }

  @override
  RealEstateListProvider getProviderOverride(
    covariant RealEstateListProvider provider,
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
  String? get name => r'realEstateListProvider';
}

/// See also [RealEstateList].
class RealEstateListProvider extends AutoDisposeNotifierProviderImpl<
    RealEstateList, RealEstateListState> {
  /// See also [RealEstateList].
  RealEstateListProvider({
    RealEstateParamsModel? params,
  }) : this._internal(
          () => RealEstateList()..params = params,
          from: realEstateListProvider,
          name: r'realEstateListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$realEstateListHash,
          dependencies: RealEstateListFamily._dependencies,
          allTransitiveDependencies:
              RealEstateListFamily._allTransitiveDependencies,
          params: params,
        );

  RealEstateListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final RealEstateParamsModel? params;

  @override
  RealEstateListState runNotifierBuild(
    covariant RealEstateList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(RealEstateList Function() create) {
    return ProviderOverride(
      origin: this,
      override: RealEstateListProvider._internal(
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
  AutoDisposeNotifierProviderElement<RealEstateList, RealEstateListState>
      createElement() {
    return _RealEstateListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RealEstateListProvider && other.params == params;
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
mixin RealEstateListRef on AutoDisposeNotifierProviderRef<RealEstateListState> {
  /// The parameter `params` of this provider.
  RealEstateParamsModel? get params;
}

class _RealEstateListProviderElement extends AutoDisposeNotifierProviderElement<
    RealEstateList, RealEstateListState> with RealEstateListRef {
  _RealEstateListProviderElement(super.provider);

  @override
  RealEstateParamsModel? get params =>
      (origin as RealEstateListProvider).params;
}

String _$realEstateDetailsHash() => r'a545a8d6d1d7a823268ce9c757ec3e05cbe5ddf6';

abstract class _$RealEstateDetails
    extends BuildlessAutoDisposeAsyncNotifier<RealEstateDetailsModel> {
  late final int id;

  FutureOr<RealEstateDetailsModel> build(
    int id,
  );
}

/// See also [RealEstateDetails].
@ProviderFor(RealEstateDetails)
const realEstateDetailsProvider = RealEstateDetailsFamily();

/// See also [RealEstateDetails].
class RealEstateDetailsFamily
    extends Family<AsyncValue<RealEstateDetailsModel>> {
  /// See also [RealEstateDetails].
  const RealEstateDetailsFamily();

  /// See also [RealEstateDetails].
  RealEstateDetailsProvider call(
    int id,
  ) {
    return RealEstateDetailsProvider(
      id,
    );
  }

  @override
  RealEstateDetailsProvider getProviderOverride(
    covariant RealEstateDetailsProvider provider,
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
  String? get name => r'realEstateDetailsProvider';
}

/// See also [RealEstateDetails].
class RealEstateDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    RealEstateDetails, RealEstateDetailsModel> {
  /// See also [RealEstateDetails].
  RealEstateDetailsProvider(
    int id,
  ) : this._internal(
          () => RealEstateDetails()..id = id,
          from: realEstateDetailsProvider,
          name: r'realEstateDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$realEstateDetailsHash,
          dependencies: RealEstateDetailsFamily._dependencies,
          allTransitiveDependencies:
              RealEstateDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  RealEstateDetailsProvider._internal(
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
  FutureOr<RealEstateDetailsModel> runNotifierBuild(
    covariant RealEstateDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(RealEstateDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: RealEstateDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<RealEstateDetails,
      RealEstateDetailsModel> createElement() {
    return _RealEstateDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RealEstateDetailsProvider && other.id == id;
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
mixin RealEstateDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<RealEstateDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _RealEstateDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RealEstateDetails,
        RealEstateDetailsModel> with RealEstateDetailsRef {
  _RealEstateDetailsProviderElement(super.provider);

  @override
  int get id => (origin as RealEstateDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
