// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createFCMHash() => r'70077a42dac9aee13e28d7523f6329e2b0d1dd56';

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

/// See also [createFCM].
@ProviderFor(createFCM)
const createFCMProvider = CreateFCMFamily();

/// See also [createFCM].
class CreateFCMFamily extends Family<AsyncValue<ApiResponse>> {
  /// See also [createFCM].
  const CreateFCMFamily();

  /// See also [createFCM].
  CreateFCMProvider call([
    String? token,
  ]) {
    return CreateFCMProvider(
      token,
    );
  }

  @override
  CreateFCMProvider getProviderOverride(
    covariant CreateFCMProvider provider,
  ) {
    return call(
      provider.token,
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
  String? get name => r'createFCMProvider';
}

/// See also [createFCM].
class CreateFCMProvider extends AutoDisposeFutureProvider<ApiResponse> {
  /// See also [createFCM].
  CreateFCMProvider([
    String? token,
  ]) : this._internal(
          (ref) => createFCM(
            ref as CreateFCMRef,
            token,
          ),
          from: createFCMProvider,
          name: r'createFCMProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createFCMHash,
          dependencies: CreateFCMFamily._dependencies,
          allTransitiveDependencies: CreateFCMFamily._allTransitiveDependencies,
          token: token,
        );

  CreateFCMProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final String? token;

  @override
  Override overrideWith(
    FutureOr<ApiResponse> Function(CreateFCMRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateFCMProvider._internal(
        (ref) => create(ref as CreateFCMRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse> createElement() {
    return _CreateFCMProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateFCMProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateFCMRef on AutoDisposeFutureProviderRef<ApiResponse> {
  /// The parameter `token` of this provider.
  String? get token;
}

class _CreateFCMProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse> with CreateFCMRef {
  _CreateFCMProviderElement(super.provider);

  @override
  String? get token => (origin as CreateFCMProvider).token;
}

String _$deleteFCMHash() => r'1a8750d8808908bc9105e65e3275d84b14c95491';

/// See also [deleteFCM].
@ProviderFor(deleteFCM)
final deleteFCMProvider = AutoDisposeFutureProvider<ApiResponse>.internal(
  deleteFCM,
  name: r'deleteFCMProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$deleteFCMHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DeleteFCMRef = AutoDisposeFutureProviderRef<ApiResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
