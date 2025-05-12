// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$vacancyListHash() => r'8ea7877903546bc6322ef69d40df8e95f1c914bd';

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

abstract class _$VacancyList
    extends BuildlessAutoDisposeNotifier<VacancyListState> {
  late final VacancyParamsModel? params;

  VacancyListState build({
    VacancyParamsModel? params,
  });
}

/// See also [VacancyList].
@ProviderFor(VacancyList)
const vacancyListProvider = VacancyListFamily();

/// See also [VacancyList].
class VacancyListFamily extends Family<VacancyListState> {
  /// See also [VacancyList].
  const VacancyListFamily();

  /// See also [VacancyList].
  VacancyListProvider call({
    VacancyParamsModel? params,
  }) {
    return VacancyListProvider(
      params: params,
    );
  }

  @override
  VacancyListProvider getProviderOverride(
    covariant VacancyListProvider provider,
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
  String? get name => r'vacancyListProvider';
}

/// See also [VacancyList].
class VacancyListProvider
    extends AutoDisposeNotifierProviderImpl<VacancyList, VacancyListState> {
  /// See also [VacancyList].
  VacancyListProvider({
    VacancyParamsModel? params,
  }) : this._internal(
          () => VacancyList()..params = params,
          from: vacancyListProvider,
          name: r'vacancyListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vacancyListHash,
          dependencies: VacancyListFamily._dependencies,
          allTransitiveDependencies:
              VacancyListFamily._allTransitiveDependencies,
          params: params,
        );

  VacancyListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final VacancyParamsModel? params;

  @override
  VacancyListState runNotifierBuild(
    covariant VacancyList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(VacancyList Function() create) {
    return ProviderOverride(
      origin: this,
      override: VacancyListProvider._internal(
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
  AutoDisposeNotifierProviderElement<VacancyList, VacancyListState>
      createElement() {
    return _VacancyListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VacancyListProvider && other.params == params;
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
mixin VacancyListRef on AutoDisposeNotifierProviderRef<VacancyListState> {
  /// The parameter `params` of this provider.
  VacancyParamsModel? get params;
}

class _VacancyListProviderElement
    extends AutoDisposeNotifierProviderElement<VacancyList, VacancyListState>
    with VacancyListRef {
  _VacancyListProviderElement(super.provider);

  @override
  VacancyParamsModel? get params => (origin as VacancyListProvider).params;
}

String _$vacancyDetailsHash() => r'33a27cfcba473b35d6cbb46e26424a92be82aa5d';

abstract class _$VacancyDetails
    extends BuildlessAutoDisposeAsyncNotifier<VacancyDetailsModel> {
  late final int id;

  FutureOr<VacancyDetailsModel> build(
    int id,
  );
}

/// See also [VacancyDetails].
@ProviderFor(VacancyDetails)
const vacancyDetailsProvider = VacancyDetailsFamily();

/// See also [VacancyDetails].
class VacancyDetailsFamily extends Family<AsyncValue<VacancyDetailsModel>> {
  /// See also [VacancyDetails].
  const VacancyDetailsFamily();

  /// See also [VacancyDetails].
  VacancyDetailsProvider call(
    int id,
  ) {
    return VacancyDetailsProvider(
      id,
    );
  }

  @override
  VacancyDetailsProvider getProviderOverride(
    covariant VacancyDetailsProvider provider,
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
  String? get name => r'vacancyDetailsProvider';
}

/// See also [VacancyDetails].
class VacancyDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    VacancyDetails, VacancyDetailsModel> {
  /// See also [VacancyDetails].
  VacancyDetailsProvider(
    int id,
  ) : this._internal(
          () => VacancyDetails()..id = id,
          from: vacancyDetailsProvider,
          name: r'vacancyDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$vacancyDetailsHash,
          dependencies: VacancyDetailsFamily._dependencies,
          allTransitiveDependencies:
              VacancyDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  VacancyDetailsProvider._internal(
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
  FutureOr<VacancyDetailsModel> runNotifierBuild(
    covariant VacancyDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(VacancyDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: VacancyDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<VacancyDetails, VacancyDetailsModel>
      createElement() {
    return _VacancyDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VacancyDetailsProvider && other.id == id;
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
mixin VacancyDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<VacancyDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _VacancyDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<VacancyDetails,
        VacancyDetailsModel> with VacancyDetailsRef {
  _VacancyDetailsProviderElement(super.provider);

  @override
  int get id => (origin as VacancyDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
