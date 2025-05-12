// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sewing_workshop_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sewingWorkshopListHash() =>
    r'a219d459590feada5298ac51bce95e3e13ef9bea';

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

abstract class _$SewingWorkshopList
    extends BuildlessAutoDisposeNotifier<SewingWorkshopListState> {
  late final SewingWorkshopParamsModel? params;

  SewingWorkshopListState build({
    SewingWorkshopParamsModel? params,
  });
}

/// See also [SewingWorkshopList].
@ProviderFor(SewingWorkshopList)
const sewingWorkshopListProvider = SewingWorkshopListFamily();

/// See also [SewingWorkshopList].
class SewingWorkshopListFamily extends Family<SewingWorkshopListState> {
  /// See also [SewingWorkshopList].
  const SewingWorkshopListFamily();

  /// See also [SewingWorkshopList].
  SewingWorkshopListProvider call({
    SewingWorkshopParamsModel? params,
  }) {
    return SewingWorkshopListProvider(
      params: params,
    );
  }

  @override
  SewingWorkshopListProvider getProviderOverride(
    covariant SewingWorkshopListProvider provider,
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
  String? get name => r'sewingWorkshopListProvider';
}

/// See also [SewingWorkshopList].
class SewingWorkshopListProvider extends AutoDisposeNotifierProviderImpl<
    SewingWorkshopList, SewingWorkshopListState> {
  /// See also [SewingWorkshopList].
  SewingWorkshopListProvider({
    SewingWorkshopParamsModel? params,
  }) : this._internal(
          () => SewingWorkshopList()..params = params,
          from: sewingWorkshopListProvider,
          name: r'sewingWorkshopListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sewingWorkshopListHash,
          dependencies: SewingWorkshopListFamily._dependencies,
          allTransitiveDependencies:
              SewingWorkshopListFamily._allTransitiveDependencies,
          params: params,
        );

  SewingWorkshopListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SewingWorkshopParamsModel? params;

  @override
  SewingWorkshopListState runNotifierBuild(
    covariant SewingWorkshopList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(SewingWorkshopList Function() create) {
    return ProviderOverride(
      origin: this,
      override: SewingWorkshopListProvider._internal(
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
  AutoDisposeNotifierProviderElement<SewingWorkshopList,
      SewingWorkshopListState> createElement() {
    return _SewingWorkshopListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SewingWorkshopListProvider && other.params == params;
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
mixin SewingWorkshopListRef
    on AutoDisposeNotifierProviderRef<SewingWorkshopListState> {
  /// The parameter `params` of this provider.
  SewingWorkshopParamsModel? get params;
}

class _SewingWorkshopListProviderElement
    extends AutoDisposeNotifierProviderElement<SewingWorkshopList,
        SewingWorkshopListState> with SewingWorkshopListRef {
  _SewingWorkshopListProviderElement(super.provider);

  @override
  SewingWorkshopParamsModel? get params =>
      (origin as SewingWorkshopListProvider).params;
}

String _$sewingWorkshopDetailsHash() =>
    r'4e331aeb4e2079d52406bf8ea2a953756b343bca';

abstract class _$SewingWorkshopDetails
    extends BuildlessAutoDisposeAsyncNotifier<SewingWorkshopDetailsModel> {
  late final int id;

  FutureOr<SewingWorkshopDetailsModel> build(
    int id,
  );
}

/// See also [SewingWorkshopDetails].
@ProviderFor(SewingWorkshopDetails)
const sewingWorkshopDetailsProvider = SewingWorkshopDetailsFamily();

/// See also [SewingWorkshopDetails].
class SewingWorkshopDetailsFamily
    extends Family<AsyncValue<SewingWorkshopDetailsModel>> {
  /// See also [SewingWorkshopDetails].
  const SewingWorkshopDetailsFamily();

  /// See also [SewingWorkshopDetails].
  SewingWorkshopDetailsProvider call(
    int id,
  ) {
    return SewingWorkshopDetailsProvider(
      id,
    );
  }

  @override
  SewingWorkshopDetailsProvider getProviderOverride(
    covariant SewingWorkshopDetailsProvider provider,
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
  String? get name => r'sewingWorkshopDetailsProvider';
}

/// See also [SewingWorkshopDetails].
class SewingWorkshopDetailsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SewingWorkshopDetails,
        SewingWorkshopDetailsModel> {
  /// See also [SewingWorkshopDetails].
  SewingWorkshopDetailsProvider(
    int id,
  ) : this._internal(
          () => SewingWorkshopDetails()..id = id,
          from: sewingWorkshopDetailsProvider,
          name: r'sewingWorkshopDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sewingWorkshopDetailsHash,
          dependencies: SewingWorkshopDetailsFamily._dependencies,
          allTransitiveDependencies:
              SewingWorkshopDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  SewingWorkshopDetailsProvider._internal(
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
  FutureOr<SewingWorkshopDetailsModel> runNotifierBuild(
    covariant SewingWorkshopDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(SewingWorkshopDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: SewingWorkshopDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SewingWorkshopDetails,
      SewingWorkshopDetailsModel> createElement() {
    return _SewingWorkshopDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SewingWorkshopDetailsProvider && other.id == id;
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
mixin SewingWorkshopDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<SewingWorkshopDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SewingWorkshopDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SewingWorkshopDetails,
        SewingWorkshopDetailsModel> with SewingWorkshopDetailsRef {
  _SewingWorkshopDetailsProviderElement(super.provider);

  @override
  int get id => (origin as SewingWorkshopDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
