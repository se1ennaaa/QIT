// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$managerListHash() => r'e9aadda08360cbdcda083e450d9fa16791ffd479';

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

abstract class _$ManagerList
    extends BuildlessAutoDisposeNotifier<ManagerListState> {
  late final ManagerParamsModel? params;

  ManagerListState build({
    ManagerParamsModel? params,
  });
}

/// See also [ManagerList].
@ProviderFor(ManagerList)
const managerListProvider = ManagerListFamily();

/// See also [ManagerList].
class ManagerListFamily extends Family<ManagerListState> {
  /// See also [ManagerList].
  const ManagerListFamily();

  /// See also [ManagerList].
  ManagerListProvider call({
    ManagerParamsModel? params,
  }) {
    return ManagerListProvider(
      params: params,
    );
  }

  @override
  ManagerListProvider getProviderOverride(
    covariant ManagerListProvider provider,
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
  String? get name => r'managerListProvider';
}

/// See also [ManagerList].
class ManagerListProvider
    extends AutoDisposeNotifierProviderImpl<ManagerList, ManagerListState> {
  /// See also [ManagerList].
  ManagerListProvider({
    ManagerParamsModel? params,
  }) : this._internal(
          () => ManagerList()..params = params,
          from: managerListProvider,
          name: r'managerListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$managerListHash,
          dependencies: ManagerListFamily._dependencies,
          allTransitiveDependencies:
              ManagerListFamily._allTransitiveDependencies,
          params: params,
        );

  ManagerListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final ManagerParamsModel? params;

  @override
  ManagerListState runNotifierBuild(
    covariant ManagerList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(ManagerList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ManagerListProvider._internal(
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
  AutoDisposeNotifierProviderElement<ManagerList, ManagerListState>
      createElement() {
    return _ManagerListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ManagerListProvider && other.params == params;
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
mixin ManagerListRef on AutoDisposeNotifierProviderRef<ManagerListState> {
  /// The parameter `params` of this provider.
  ManagerParamsModel? get params;
}

class _ManagerListProviderElement
    extends AutoDisposeNotifierProviderElement<ManagerList, ManagerListState>
    with ManagerListRef {
  _ManagerListProviderElement(super.provider);

  @override
  ManagerParamsModel? get params => (origin as ManagerListProvider).params;
}

String _$managerDetailsHash() => r'988bc6628274e46e930d0ab45a1d55246cad5b14';

abstract class _$ManagerDetails
    extends BuildlessAutoDisposeAsyncNotifier<ManagerDetailsModel> {
  late final int id;

  FutureOr<ManagerDetailsModel> build(
    int id,
  );
}

/// See also [ManagerDetails].
@ProviderFor(ManagerDetails)
const managerDetailsProvider = ManagerDetailsFamily();

/// See also [ManagerDetails].
class ManagerDetailsFamily extends Family<AsyncValue<ManagerDetailsModel>> {
  /// See also [ManagerDetails].
  const ManagerDetailsFamily();

  /// See also [ManagerDetails].
  ManagerDetailsProvider call(
    int id,
  ) {
    return ManagerDetailsProvider(
      id,
    );
  }

  @override
  ManagerDetailsProvider getProviderOverride(
    covariant ManagerDetailsProvider provider,
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
  String? get name => r'managerDetailsProvider';
}

/// See also [ManagerDetails].
class ManagerDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ManagerDetails, ManagerDetailsModel> {
  /// See also [ManagerDetails].
  ManagerDetailsProvider(
    int id,
  ) : this._internal(
          () => ManagerDetails()..id = id,
          from: managerDetailsProvider,
          name: r'managerDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$managerDetailsHash,
          dependencies: ManagerDetailsFamily._dependencies,
          allTransitiveDependencies:
              ManagerDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  ManagerDetailsProvider._internal(
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
  FutureOr<ManagerDetailsModel> runNotifierBuild(
    covariant ManagerDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ManagerDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: ManagerDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ManagerDetails, ManagerDetailsModel>
      createElement() {
    return _ManagerDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ManagerDetailsProvider && other.id == id;
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
mixin ManagerDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<ManagerDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ManagerDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ManagerDetails,
        ManagerDetailsModel> with ManagerDetailsRef {
  _ManagerDetailsProviderElement(super.provider);

  @override
  int get id => (origin as ManagerDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
