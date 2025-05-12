// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'madina_market_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$madinaContainerListHash() =>
    r'8dd88ab05ca5f70149802cf8915ffcdb58a4c65c';

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

abstract class _$MadinaContainerList
    extends BuildlessAutoDisposeNotifier<MadinaContainerListState> {
  late final MadinaContainerParamsModel? params;

  MadinaContainerListState build({
    MadinaContainerParamsModel? params,
  });
}

/// See also [MadinaContainerList].
@ProviderFor(MadinaContainerList)
const madinaContainerListProvider = MadinaContainerListFamily();

/// See also [MadinaContainerList].
class MadinaContainerListFamily extends Family<MadinaContainerListState> {
  /// See also [MadinaContainerList].
  const MadinaContainerListFamily();

  /// See also [MadinaContainerList].
  MadinaContainerListProvider call({
    MadinaContainerParamsModel? params,
  }) {
    return MadinaContainerListProvider(
      params: params,
    );
  }

  @override
  MadinaContainerListProvider getProviderOverride(
    covariant MadinaContainerListProvider provider,
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
  String? get name => r'madinaContainerListProvider';
}

/// See also [MadinaContainerList].
class MadinaContainerListProvider extends AutoDisposeNotifierProviderImpl<
    MadinaContainerList, MadinaContainerListState> {
  /// See also [MadinaContainerList].
  MadinaContainerListProvider({
    MadinaContainerParamsModel? params,
  }) : this._internal(
          () => MadinaContainerList()..params = params,
          from: madinaContainerListProvider,
          name: r'madinaContainerListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$madinaContainerListHash,
          dependencies: MadinaContainerListFamily._dependencies,
          allTransitiveDependencies:
              MadinaContainerListFamily._allTransitiveDependencies,
          params: params,
        );

  MadinaContainerListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final MadinaContainerParamsModel? params;

  @override
  MadinaContainerListState runNotifierBuild(
    covariant MadinaContainerList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(MadinaContainerList Function() create) {
    return ProviderOverride(
      origin: this,
      override: MadinaContainerListProvider._internal(
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
  AutoDisposeNotifierProviderElement<MadinaContainerList,
      MadinaContainerListState> createElement() {
    return _MadinaContainerListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MadinaContainerListProvider && other.params == params;
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
mixin MadinaContainerListRef
    on AutoDisposeNotifierProviderRef<MadinaContainerListState> {
  /// The parameter `params` of this provider.
  MadinaContainerParamsModel? get params;
}

class _MadinaContainerListProviderElement
    extends AutoDisposeNotifierProviderElement<MadinaContainerList,
        MadinaContainerListState> with MadinaContainerListRef {
  _MadinaContainerListProviderElement(super.provider);

  @override
  MadinaContainerParamsModel? get params =>
      (origin as MadinaContainerListProvider).params;
}

String _$madinaContainerDetailsHash() =>
    r'65d40233cb171d650ce00ad653bb04b61c5c35a7';

abstract class _$MadinaContainerDetails
    extends BuildlessAutoDisposeAsyncNotifier<MadinaContainerDetailsModel> {
  late final int id;

  FutureOr<MadinaContainerDetailsModel> build(
    int id,
  );
}

/// See also [MadinaContainerDetails].
@ProviderFor(MadinaContainerDetails)
const madinaContainerDetailsProvider = MadinaContainerDetailsFamily();

/// See also [MadinaContainerDetails].
class MadinaContainerDetailsFamily
    extends Family<AsyncValue<MadinaContainerDetailsModel>> {
  /// See also [MadinaContainerDetails].
  const MadinaContainerDetailsFamily();

  /// See also [MadinaContainerDetails].
  MadinaContainerDetailsProvider call(
    int id,
  ) {
    return MadinaContainerDetailsProvider(
      id,
    );
  }

  @override
  MadinaContainerDetailsProvider getProviderOverride(
    covariant MadinaContainerDetailsProvider provider,
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
  String? get name => r'madinaContainerDetailsProvider';
}

/// See also [MadinaContainerDetails].
class MadinaContainerDetailsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MadinaContainerDetails,
        MadinaContainerDetailsModel> {
  /// See also [MadinaContainerDetails].
  MadinaContainerDetailsProvider(
    int id,
  ) : this._internal(
          () => MadinaContainerDetails()..id = id,
          from: madinaContainerDetailsProvider,
          name: r'madinaContainerDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$madinaContainerDetailsHash,
          dependencies: MadinaContainerDetailsFamily._dependencies,
          allTransitiveDependencies:
              MadinaContainerDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  MadinaContainerDetailsProvider._internal(
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
  FutureOr<MadinaContainerDetailsModel> runNotifierBuild(
    covariant MadinaContainerDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(MadinaContainerDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: MadinaContainerDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MadinaContainerDetails,
      MadinaContainerDetailsModel> createElement() {
    return _MadinaContainerDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MadinaContainerDetailsProvider && other.id == id;
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
mixin MadinaContainerDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<MadinaContainerDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _MadinaContainerDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MadinaContainerDetails,
        MadinaContainerDetailsModel> with MadinaContainerDetailsRef {
  _MadinaContainerDetailsProviderElement(super.provider);

  @override
  int get id => (origin as MadinaContainerDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
