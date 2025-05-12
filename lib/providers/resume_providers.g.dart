// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$resumeListHash() => r'49b0f4927f2d583fbc22a7f7acd501552800394d';

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

abstract class _$ResumeList
    extends BuildlessAutoDisposeNotifier<ResumeListState> {
  late final ResumeParamsModel? params;

  ResumeListState build({
    ResumeParamsModel? params,
  });
}

/// See also [ResumeList].
@ProviderFor(ResumeList)
const resumeListProvider = ResumeListFamily();

/// See also [ResumeList].
class ResumeListFamily extends Family<ResumeListState> {
  /// See also [ResumeList].
  const ResumeListFamily();

  /// See also [ResumeList].
  ResumeListProvider call({
    ResumeParamsModel? params,
  }) {
    return ResumeListProvider(
      params: params,
    );
  }

  @override
  ResumeListProvider getProviderOverride(
    covariant ResumeListProvider provider,
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
  String? get name => r'resumeListProvider';
}

/// See also [ResumeList].
class ResumeListProvider
    extends AutoDisposeNotifierProviderImpl<ResumeList, ResumeListState> {
  /// See also [ResumeList].
  ResumeListProvider({
    ResumeParamsModel? params,
  }) : this._internal(
          () => ResumeList()..params = params,
          from: resumeListProvider,
          name: r'resumeListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resumeListHash,
          dependencies: ResumeListFamily._dependencies,
          allTransitiveDependencies:
              ResumeListFamily._allTransitiveDependencies,
          params: params,
        );

  ResumeListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final ResumeParamsModel? params;

  @override
  ResumeListState runNotifierBuild(
    covariant ResumeList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(ResumeList Function() create) {
    return ProviderOverride(
      origin: this,
      override: ResumeListProvider._internal(
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
  AutoDisposeNotifierProviderElement<ResumeList, ResumeListState>
      createElement() {
    return _ResumeListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResumeListProvider && other.params == params;
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
mixin ResumeListRef on AutoDisposeNotifierProviderRef<ResumeListState> {
  /// The parameter `params` of this provider.
  ResumeParamsModel? get params;
}

class _ResumeListProviderElement
    extends AutoDisposeNotifierProviderElement<ResumeList, ResumeListState>
    with ResumeListRef {
  _ResumeListProviderElement(super.provider);

  @override
  ResumeParamsModel? get params => (origin as ResumeListProvider).params;
}

String _$resumeDetailsHash() => r'f9480ec59b22aa3ff86dbeede36fc68223087577';

abstract class _$ResumeDetails
    extends BuildlessAutoDisposeAsyncNotifier<ResumeDetailsModel> {
  late final int id;

  FutureOr<ResumeDetailsModel> build(
    int id,
  );
}

/// See also [ResumeDetails].
@ProviderFor(ResumeDetails)
const resumeDetailsProvider = ResumeDetailsFamily();

/// See also [ResumeDetails].
class ResumeDetailsFamily extends Family<AsyncValue<ResumeDetailsModel>> {
  /// See also [ResumeDetails].
  const ResumeDetailsFamily();

  /// See also [ResumeDetails].
  ResumeDetailsProvider call(
    int id,
  ) {
    return ResumeDetailsProvider(
      id,
    );
  }

  @override
  ResumeDetailsProvider getProviderOverride(
    covariant ResumeDetailsProvider provider,
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
  String? get name => r'resumeDetailsProvider';
}

/// See also [ResumeDetails].
class ResumeDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    ResumeDetails, ResumeDetailsModel> {
  /// See also [ResumeDetails].
  ResumeDetailsProvider(
    int id,
  ) : this._internal(
          () => ResumeDetails()..id = id,
          from: resumeDetailsProvider,
          name: r'resumeDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$resumeDetailsHash,
          dependencies: ResumeDetailsFamily._dependencies,
          allTransitiveDependencies:
              ResumeDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  ResumeDetailsProvider._internal(
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
  FutureOr<ResumeDetailsModel> runNotifierBuild(
    covariant ResumeDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(ResumeDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: ResumeDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ResumeDetails, ResumeDetailsModel>
      createElement() {
    return _ResumeDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ResumeDetailsProvider && other.id == id;
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
mixin ResumeDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<ResumeDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _ResumeDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ResumeDetails,
        ResumeDetailsModel> with ResumeDetailsRef {
  _ResumeDetailsProviderElement(super.provider);

  @override
  int get id => (origin as ResumeDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
