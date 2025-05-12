// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$courseListHash() => r'b464a332236bc1d2e54506939c6e0b1a5e5d61ff';

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

abstract class _$CourseList
    extends BuildlessAutoDisposeNotifier<CourseListState> {
  late final CourseParamsModel? params;

  CourseListState build({
    CourseParamsModel? params,
  });
}

/// See also [CourseList].
@ProviderFor(CourseList)
const courseListProvider = CourseListFamily();

/// See also [CourseList].
class CourseListFamily extends Family<CourseListState> {
  /// See also [CourseList].
  const CourseListFamily();

  /// See also [CourseList].
  CourseListProvider call({
    CourseParamsModel? params,
  }) {
    return CourseListProvider(
      params: params,
    );
  }

  @override
  CourseListProvider getProviderOverride(
    covariant CourseListProvider provider,
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
  String? get name => r'courseListProvider';
}

/// See also [CourseList].
class CourseListProvider
    extends AutoDisposeNotifierProviderImpl<CourseList, CourseListState> {
  /// See also [CourseList].
  CourseListProvider({
    CourseParamsModel? params,
  }) : this._internal(
          () => CourseList()..params = params,
          from: courseListProvider,
          name: r'courseListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseListHash,
          dependencies: CourseListFamily._dependencies,
          allTransitiveDependencies:
              CourseListFamily._allTransitiveDependencies,
          params: params,
        );

  CourseListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final CourseParamsModel? params;

  @override
  CourseListState runNotifierBuild(
    covariant CourseList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(CourseList Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseListProvider._internal(
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
  AutoDisposeNotifierProviderElement<CourseList, CourseListState>
      createElement() {
    return _CourseListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseListProvider && other.params == params;
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
mixin CourseListRef on AutoDisposeNotifierProviderRef<CourseListState> {
  /// The parameter `params` of this provider.
  CourseParamsModel? get params;
}

class _CourseListProviderElement
    extends AutoDisposeNotifierProviderElement<CourseList, CourseListState>
    with CourseListRef {
  _CourseListProviderElement(super.provider);

  @override
  CourseParamsModel? get params => (origin as CourseListProvider).params;
}

String _$courseDetailsHash() => r'd838ced0f10ee20cc9bf05fe75ff680c2df23378';

abstract class _$CourseDetails
    extends BuildlessAutoDisposeAsyncNotifier<CourseDetailsModel> {
  late final int id;

  FutureOr<CourseDetailsModel> build(
    int id,
  );
}

/// See also [CourseDetails].
@ProviderFor(CourseDetails)
const courseDetailsProvider = CourseDetailsFamily();

/// See also [CourseDetails].
class CourseDetailsFamily extends Family<AsyncValue<CourseDetailsModel>> {
  /// See also [CourseDetails].
  const CourseDetailsFamily();

  /// See also [CourseDetails].
  CourseDetailsProvider call(
    int id,
  ) {
    return CourseDetailsProvider(
      id,
    );
  }

  @override
  CourseDetailsProvider getProviderOverride(
    covariant CourseDetailsProvider provider,
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
  String? get name => r'courseDetailsProvider';
}

/// See also [CourseDetails].
class CourseDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CourseDetails, CourseDetailsModel> {
  /// See also [CourseDetails].
  CourseDetailsProvider(
    int id,
  ) : this._internal(
          () => CourseDetails()..id = id,
          from: courseDetailsProvider,
          name: r'courseDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$courseDetailsHash,
          dependencies: CourseDetailsFamily._dependencies,
          allTransitiveDependencies:
              CourseDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  CourseDetailsProvider._internal(
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
  FutureOr<CourseDetailsModel> runNotifierBuild(
    covariant CourseDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(CourseDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: CourseDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<CourseDetails, CourseDetailsModel>
      createElement() {
    return _CourseDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CourseDetailsProvider && other.id == id;
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
mixin CourseDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<CourseDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _CourseDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CourseDetails,
        CourseDetailsModel> with CourseDetailsRef {
  _CourseDetailsProviderElement(super.provider);

  @override
  int get id => (origin as CourseDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
