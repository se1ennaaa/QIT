// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_favorite_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$toggleFavoriteHash() => r'f08372cfa654dfdae6ae422632c1cba53249812b';

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

/// See also [toggleFavorite].
@ProviderFor(toggleFavorite)
const toggleFavoriteProvider = ToggleFavoriteFamily();

/// See also [toggleFavorite].
class ToggleFavoriteFamily extends Family<AsyncValue<ApiResponse>> {
  /// See also [toggleFavorite].
  const ToggleFavoriteFamily();

  /// See also [toggleFavorite].
  ToggleFavoriteProvider call(
    int id,
    FavoriteType type,
  ) {
    return ToggleFavoriteProvider(
      id,
      type,
    );
  }

  @override
  ToggleFavoriteProvider getProviderOverride(
    covariant ToggleFavoriteProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'toggleFavoriteProvider';
}

/// See also [toggleFavorite].
class ToggleFavoriteProvider extends AutoDisposeFutureProvider<ApiResponse> {
  /// See also [toggleFavorite].
  ToggleFavoriteProvider(
    int id,
    FavoriteType type,
  ) : this._internal(
          (ref) => toggleFavorite(
            ref as ToggleFavoriteRef,
            id,
            type,
          ),
          from: toggleFavoriteProvider,
          name: r'toggleFavoriteProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$toggleFavoriteHash,
          dependencies: ToggleFavoriteFamily._dependencies,
          allTransitiveDependencies:
              ToggleFavoriteFamily._allTransitiveDependencies,
          id: id,
          type: type,
        );

  ToggleFavoriteProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.type,
  }) : super.internal();

  final int id;
  final FavoriteType type;

  @override
  Override overrideWith(
    FutureOr<ApiResponse> Function(ToggleFavoriteRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ToggleFavoriteProvider._internal(
        (ref) => create(ref as ToggleFavoriteRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse> createElement() {
    return _ToggleFavoriteProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ToggleFavoriteProvider &&
        other.id == id &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ToggleFavoriteRef on AutoDisposeFutureProviderRef<ApiResponse> {
  /// The parameter `id` of this provider.
  int get id;

  /// The parameter `type` of this provider.
  FavoriteType get type;
}

class _ToggleFavoriteProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse>
    with ToggleFavoriteRef {
  _ToggleFavoriteProviderElement(super.provider);

  @override
  int get id => (origin as ToggleFavoriteProvider).id;
  @override
  FavoriteType get type => (origin as ToggleFavoriteProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
