// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoryListHash() => r'62e18805dde9dbf607271067848df88f0454b79b';

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

abstract class _$CategoryList
    extends BuildlessAutoDisposeAsyncNotifier<List<CategoryModel>> {
  late final CategoryType type;

  FutureOr<List<CategoryModel>> build(
    CategoryType type,
  );
}

/// See also [CategoryList].
@ProviderFor(CategoryList)
const categoryListProvider = CategoryListFamily();

/// See also [CategoryList].
class CategoryListFamily extends Family<AsyncValue<List<CategoryModel>>> {
  /// See also [CategoryList].
  const CategoryListFamily();

  /// See also [CategoryList].
  CategoryListProvider call(
    CategoryType type,
  ) {
    return CategoryListProvider(
      type,
    );
  }

  @override
  CategoryListProvider getProviderOverride(
    covariant CategoryListProvider provider,
  ) {
    return call(
      provider.type,
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
  String? get name => r'categoryListProvider';
}

/// See also [CategoryList].
class CategoryListProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CategoryList, List<CategoryModel>> {
  /// See also [CategoryList].
  CategoryListProvider(
    CategoryType type,
  ) : this._internal(
          () => CategoryList()..type = type,
          from: categoryListProvider,
          name: r'categoryListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$categoryListHash,
          dependencies: CategoryListFamily._dependencies,
          allTransitiveDependencies:
              CategoryListFamily._allTransitiveDependencies,
          type: type,
        );

  CategoryListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
  }) : super.internal();

  final CategoryType type;

  @override
  FutureOr<List<CategoryModel>> runNotifierBuild(
    covariant CategoryList notifier,
  ) {
    return notifier.build(
      type,
    );
  }

  @override
  Override overrideWith(CategoryList Function() create) {
    return ProviderOverride(
      origin: this,
      override: CategoryListProvider._internal(
        () => create()..type = type,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CategoryList, List<CategoryModel>>
      createElement() {
    return _CategoryListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CategoryListProvider && other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CategoryListRef
    on AutoDisposeAsyncNotifierProviderRef<List<CategoryModel>> {
  /// The parameter `type` of this provider.
  CategoryType get type;
}

class _CategoryListProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CategoryList,
        List<CategoryModel>> with CategoryListRef {
  _CategoryListProviderElement(super.provider);

  @override
  CategoryType get type => (origin as CategoryListProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
