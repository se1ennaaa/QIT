// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceListHash() => r'd922d6d043824acf93b5eafacd7956dc0e57bac2';

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

abstract class _$ServiceList
    extends BuildlessAutoDisposeNotifier<ServiceListState> {
  late final ServiceParamsModel? params;

  ServiceListState build({
    ServiceParamsModel? params,
  });
}

/// See also [ServiceList].
@ProviderFor(ServiceList)
const serviceListProvider = ServiceListFamily();

/// See also [ServiceList].
class ServiceListFamily extends Family<ServiceListState> {
  /// See also [ServiceList].
  const ServiceListFamily();

  /// See also [ServiceList].
  ServiceListProvider call({
    ServiceParamsModel? params,
  }) {
    return ServiceListProvider(
      params: params,
    );
  }

  @override
  ServiceListProvider getProviderOverride(
    covariant ServiceListProvider provider,
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
  String? get name => r'serviceListProvider';
}

/// See also [ServiceList].
class ServiceListProvider
    extends AutoDisposeNotifierProviderImpl<ServiceList, ServiceListState> {
  /// See also [ServiceList].
  ServiceListProvider({
    ServiceParamsModel? params,
  }) : this._internal(
          () => ServiceList()..params = params,
          from: serviceListProvider,
          name: r'serviceListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$serviceListHash,
          dependencies: ServiceListFamily._dependencies,
          allTransitiveDependencies:
              ServiceListFamily._allTransitiveDependencies,
          params: params,
        );

  ServiceListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final ServiceParamsModel? params;

  @override
  ServiceListState runNotifierBuild(
    covariant ServiceList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(ServiceList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServiceListProvider._internal(
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
  AutoDisposeNotifierProviderElement<ServiceList, ServiceListState>
      createElement() {
    return _ServiceListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServiceListProvider && other.params == params;
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
mixin ServiceListRef on AutoDisposeNotifierProviderRef<ServiceListState> {
  /// The parameter `params` of this provider.
  ServiceParamsModel? get params;
}

class _ServiceListProviderElement
    extends AutoDisposeNotifierProviderElement<ServiceList, ServiceListState>
    with ServiceListRef {
  _ServiceListProviderElement(super.provider);

  @override
  ServiceParamsModel? get params => (origin as ServiceListProvider).params;
}

String _$serviceDetailsHash() => r'fa0241ea8b02c0f3b8e63215b464b4955c7d7264';

abstract class _$ServiceDetails
    extends BuildlessAutoDisposeAsyncNotifier<ServiceDetailsModel> {
  late final int id;

  FutureOr<ServiceDetailsModel> build(
    int id,
  );
}

/// See also [ServiceDetails].
@ProviderFor(ServiceDetails)
const serviceDetailsProvider = ServiceDetailsFamily();

/// See also [ServiceDetails].
class ServiceDetailsFamily extends Family<AsyncValue<ServiceDetailsModel>> {
  /// See also [ServiceDetails].
  const ServiceDetailsFamily();

  /// See also [ServiceDetails].
  ServiceDetailsProvider call(
    int id,
  ) {
    return ServiceDetailsProvider(
      id,
    );
  }

  @override
  ServiceDetailsProvider getProviderOverride(
    covariant ServiceDetailsProvider provider,
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
  String? get name => r'serviceDetailsProvider';
}

/// See also [ServiceDetails].
class ServiceDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ServiceDetails, ServiceDetailsModel> {
  /// See also [ServiceDetails].
  ServiceDetailsProvider(
    int id,
  ) : this._internal(
          () => ServiceDetails()..id = id,
          from: serviceDetailsProvider,
          name: r'serviceDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$serviceDetailsHash,
          dependencies: ServiceDetailsFamily._dependencies,
          allTransitiveDependencies:
              ServiceDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  ServiceDetailsProvider._internal(
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
  FutureOr<ServiceDetailsModel> runNotifierBuild(
    covariant ServiceDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ServiceDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: ServiceDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ServiceDetails, ServiceDetailsModel>
      createElement() {
    return _ServiceDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ServiceDetailsProvider && other.id == id;
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
mixin ServiceDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<ServiceDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ServiceDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ServiceDetails,
        ServiceDetailsModel> with ServiceDetailsRef {
  _ServiceDetailsProviderElement(super.provider);

  @override
  int get id => (origin as ServiceDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
