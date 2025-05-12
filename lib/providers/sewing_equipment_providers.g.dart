// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sewing_equipment_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sewingEquipmentListHash() =>
    r'942232be0ed14060bf0db6f85327dcd2f5dab94b';

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

abstract class _$SewingEquipmentList
    extends BuildlessAutoDisposeNotifier<SewingEquipmentListState> {
  late final SewingEquipmentParamsModel? params;

  SewingEquipmentListState build({
    SewingEquipmentParamsModel? params,
  });
}

/// See also [SewingEquipmentList].
@ProviderFor(SewingEquipmentList)
const sewingEquipmentListProvider = SewingEquipmentListFamily();

/// See also [SewingEquipmentList].
class SewingEquipmentListFamily extends Family<SewingEquipmentListState> {
  /// See also [SewingEquipmentList].
  const SewingEquipmentListFamily();

  /// See also [SewingEquipmentList].
  SewingEquipmentListProvider call({
    SewingEquipmentParamsModel? params,
  }) {
    return SewingEquipmentListProvider(
      params: params,
    );
  }

  @override
  SewingEquipmentListProvider getProviderOverride(
    covariant SewingEquipmentListProvider provider,
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
  String? get name => r'sewingEquipmentListProvider';
}

/// See also [SewingEquipmentList].
class SewingEquipmentListProvider extends AutoDisposeNotifierProviderImpl<
    SewingEquipmentList, SewingEquipmentListState> {
  /// See also [SewingEquipmentList].
  SewingEquipmentListProvider({
    SewingEquipmentParamsModel? params,
  }) : this._internal(
          () => SewingEquipmentList()..params = params,
          from: sewingEquipmentListProvider,
          name: r'sewingEquipmentListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sewingEquipmentListHash,
          dependencies: SewingEquipmentListFamily._dependencies,
          allTransitiveDependencies:
              SewingEquipmentListFamily._allTransitiveDependencies,
          params: params,
        );

  SewingEquipmentListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final SewingEquipmentParamsModel? params;

  @override
  SewingEquipmentListState runNotifierBuild(
    covariant SewingEquipmentList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(SewingEquipmentList Function() create) {
    return ProviderOverride(
      origin: this,
      override: SewingEquipmentListProvider._internal(
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
  AutoDisposeNotifierProviderElement<SewingEquipmentList,
      SewingEquipmentListState> createElement() {
    return _SewingEquipmentListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SewingEquipmentListProvider && other.params == params;
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
mixin SewingEquipmentListRef
    on AutoDisposeNotifierProviderRef<SewingEquipmentListState> {
  /// The parameter `params` of this provider.
  SewingEquipmentParamsModel? get params;
}

class _SewingEquipmentListProviderElement
    extends AutoDisposeNotifierProviderElement<SewingEquipmentList,
        SewingEquipmentListState> with SewingEquipmentListRef {
  _SewingEquipmentListProviderElement(super.provider);

  @override
  SewingEquipmentParamsModel? get params =>
      (origin as SewingEquipmentListProvider).params;
}

String _$sewingEquipmentDetailsHash() =>
    r'f889e6287172b54bb67049387b3f9fcdb8893f63';

abstract class _$SewingEquipmentDetails
    extends BuildlessAutoDisposeAsyncNotifier<SewingEquipmentDetailsModel> {
  late final int id;

  FutureOr<SewingEquipmentDetailsModel> build(
    int id,
  );
}

/// See also [SewingEquipmentDetails].
@ProviderFor(SewingEquipmentDetails)
const sewingEquipmentDetailsProvider = SewingEquipmentDetailsFamily();

/// See also [SewingEquipmentDetails].
class SewingEquipmentDetailsFamily
    extends Family<AsyncValue<SewingEquipmentDetailsModel>> {
  /// See also [SewingEquipmentDetails].
  const SewingEquipmentDetailsFamily();

  /// See also [SewingEquipmentDetails].
  SewingEquipmentDetailsProvider call(
    int id,
  ) {
    return SewingEquipmentDetailsProvider(
      id,
    );
  }

  @override
  SewingEquipmentDetailsProvider getProviderOverride(
    covariant SewingEquipmentDetailsProvider provider,
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
  String? get name => r'sewingEquipmentDetailsProvider';
}

/// See also [SewingEquipmentDetails].
class SewingEquipmentDetailsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SewingEquipmentDetails,
        SewingEquipmentDetailsModel> {
  /// See also [SewingEquipmentDetails].
  SewingEquipmentDetailsProvider(
    int id,
  ) : this._internal(
          () => SewingEquipmentDetails()..id = id,
          from: sewingEquipmentDetailsProvider,
          name: r'sewingEquipmentDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sewingEquipmentDetailsHash,
          dependencies: SewingEquipmentDetailsFamily._dependencies,
          allTransitiveDependencies:
              SewingEquipmentDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  SewingEquipmentDetailsProvider._internal(
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
  FutureOr<SewingEquipmentDetailsModel> runNotifierBuild(
    covariant SewingEquipmentDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(SewingEquipmentDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: SewingEquipmentDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SewingEquipmentDetails,
      SewingEquipmentDetailsModel> createElement() {
    return _SewingEquipmentDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SewingEquipmentDetailsProvider && other.id == id;
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
mixin SewingEquipmentDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<SewingEquipmentDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SewingEquipmentDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SewingEquipmentDetails,
        SewingEquipmentDetailsModel> with SewingEquipmentDetailsRef {
  _SewingEquipmentDetailsProviderElement(super.provider);

  @override
  int get id => (origin as SewingEquipmentDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
