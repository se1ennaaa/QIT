// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dordoi_market_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createDordoiContainerHash() =>
    r'43a8def9599826c874a33d7a3cedbc90cb73165f';

/// See also [createDordoiContainer].
@ProviderFor(createDordoiContainer)
final createDordoiContainerProvider =
    AutoDisposeFutureProvider<ApiResponse>.internal(
  createDordoiContainer,
  name: r'createDordoiContainerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createDordoiContainerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CreateDordoiContainerRef = AutoDisposeFutureProviderRef<ApiResponse>;
String _$editDordoiContainerHash() =>
    r'08c4f9f8096d03db13ad4f22f3e63d11b0159b17';

/// See also [editDordoiContainer].
@ProviderFor(editDordoiContainer)
final editDordoiContainerProvider =
    AutoDisposeFutureProvider<ApiResponse>.internal(
  editDordoiContainer,
  name: r'editDordoiContainerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$editDordoiContainerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EditDordoiContainerRef = AutoDisposeFutureProviderRef<ApiResponse>;
String _$dordoiContainerListHash() =>
    r'85b1c0926c96274ead26616a51903ec41a587913';

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

abstract class _$DordoiContainerList
    extends BuildlessAutoDisposeNotifier<DordoiContainerListState> {
  late final DordoiContainerParamsModel? params;

  DordoiContainerListState build({
    DordoiContainerParamsModel? params,
  });
}

/// See also [DordoiContainerList].
@ProviderFor(DordoiContainerList)
const dordoiContainerListProvider = DordoiContainerListFamily();

/// See also [DordoiContainerList].
class DordoiContainerListFamily extends Family<DordoiContainerListState> {
  /// See also [DordoiContainerList].
  const DordoiContainerListFamily();

  /// See also [DordoiContainerList].
  DordoiContainerListProvider call({
    DordoiContainerParamsModel? params,
  }) {
    return DordoiContainerListProvider(
      params: params,
    );
  }

  @override
  DordoiContainerListProvider getProviderOverride(
    covariant DordoiContainerListProvider provider,
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
  String? get name => r'dordoiContainerListProvider';
}

/// See also [DordoiContainerList].
class DordoiContainerListProvider extends AutoDisposeNotifierProviderImpl<
    DordoiContainerList, DordoiContainerListState> {
  /// See also [DordoiContainerList].
  DordoiContainerListProvider({
    DordoiContainerParamsModel? params,
  }) : this._internal(
          () => DordoiContainerList()..params = params,
          from: dordoiContainerListProvider,
          name: r'dordoiContainerListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dordoiContainerListHash,
          dependencies: DordoiContainerListFamily._dependencies,
          allTransitiveDependencies:
              DordoiContainerListFamily._allTransitiveDependencies,
          params: params,
        );

  DordoiContainerListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final DordoiContainerParamsModel? params;

  @override
  DordoiContainerListState runNotifierBuild(
    covariant DordoiContainerList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(DordoiContainerList Function() create) {
    return ProviderOverride(
      origin: this,
      override: DordoiContainerListProvider._internal(
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
  AutoDisposeNotifierProviderElement<DordoiContainerList,
      DordoiContainerListState> createElement() {
    return _DordoiContainerListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DordoiContainerListProvider && other.params == params;
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
mixin DordoiContainerListRef
    on AutoDisposeNotifierProviderRef<DordoiContainerListState> {
  /// The parameter `params` of this provider.
  DordoiContainerParamsModel? get params;
}

class _DordoiContainerListProviderElement
    extends AutoDisposeNotifierProviderElement<DordoiContainerList,
        DordoiContainerListState> with DordoiContainerListRef {
  _DordoiContainerListProviderElement(super.provider);

  @override
  DordoiContainerParamsModel? get params =>
      (origin as DordoiContainerListProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
