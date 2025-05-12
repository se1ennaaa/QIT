// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$createFeedbackHash() => r'c2d8fbd36fbde5adcd904aa4215b497fdf366891';

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

/// See also [createFeedback].
@ProviderFor(createFeedback)
const createFeedbackProvider = CreateFeedbackFamily();

/// See also [createFeedback].
class CreateFeedbackFamily extends Family<AsyncValue<ApiResponse>> {
  /// See also [createFeedback].
  const CreateFeedbackFamily();

  /// See also [createFeedback].
  CreateFeedbackProvider call(
    FeedbackModel model,
  ) {
    return CreateFeedbackProvider(
      model,
    );
  }

  @override
  CreateFeedbackProvider getProviderOverride(
    covariant CreateFeedbackProvider provider,
  ) {
    return call(
      provider.model,
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
  String? get name => r'createFeedbackProvider';
}

/// See also [createFeedback].
class CreateFeedbackProvider extends AutoDisposeFutureProvider<ApiResponse> {
  /// See also [createFeedback].
  CreateFeedbackProvider(
    FeedbackModel model,
  ) : this._internal(
          (ref) => createFeedback(
            ref as CreateFeedbackRef,
            model,
          ),
          from: createFeedbackProvider,
          name: r'createFeedbackProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createFeedbackHash,
          dependencies: CreateFeedbackFamily._dependencies,
          allTransitiveDependencies:
              CreateFeedbackFamily._allTransitiveDependencies,
          model: model,
        );

  CreateFeedbackProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.model,
  }) : super.internal();

  final FeedbackModel model;

  @override
  Override overrideWith(
    FutureOr<ApiResponse> Function(CreateFeedbackRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateFeedbackProvider._internal(
        (ref) => create(ref as CreateFeedbackRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        model: model,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<ApiResponse> createElement() {
    return _CreateFeedbackProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateFeedbackProvider && other.model == model;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, model.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateFeedbackRef on AutoDisposeFutureProviderRef<ApiResponse> {
  /// The parameter `model` of this provider.
  FeedbackModel get model;
}

class _CreateFeedbackProviderElement
    extends AutoDisposeFutureProviderElement<ApiResponse>
    with CreateFeedbackRef {
  _CreateFeedbackProviderElement(super.provider);

  @override
  FeedbackModel get model => (origin as CreateFeedbackProvider).model;
}

String _$feedbackListHash() => r'3c9c860d341c41bff7e8ec671948a07105f3f57b';

abstract class _$FeedbackList
    extends BuildlessAutoDisposeNotifier<FeedbackListState> {
  late final FeedbackParamsModel? params;

  FeedbackListState build({
    FeedbackParamsModel? params,
  });
}

/// See also [FeedbackList].
@ProviderFor(FeedbackList)
const feedbackListProvider = FeedbackListFamily();

/// See also [FeedbackList].
class FeedbackListFamily extends Family<FeedbackListState> {
  /// See also [FeedbackList].
  const FeedbackListFamily();

  /// See also [FeedbackList].
  FeedbackListProvider call({
    FeedbackParamsModel? params,
  }) {
    return FeedbackListProvider(
      params: params,
    );
  }

  @override
  FeedbackListProvider getProviderOverride(
    covariant FeedbackListProvider provider,
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
  String? get name => r'feedbackListProvider';
}

/// See also [FeedbackList].
class FeedbackListProvider
    extends AutoDisposeNotifierProviderImpl<FeedbackList, FeedbackListState> {
  /// See also [FeedbackList].
  FeedbackListProvider({
    FeedbackParamsModel? params,
  }) : this._internal(
          () => FeedbackList()..params = params,
          from: feedbackListProvider,
          name: r'feedbackListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$feedbackListHash,
          dependencies: FeedbackListFamily._dependencies,
          allTransitiveDependencies:
              FeedbackListFamily._allTransitiveDependencies,
          params: params,
        );

  FeedbackListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final FeedbackParamsModel? params;

  @override
  FeedbackListState runNotifierBuild(
    covariant FeedbackList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(FeedbackList Function() create) {
    return ProviderOverride(
      origin: this,
      override: FeedbackListProvider._internal(
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
  AutoDisposeNotifierProviderElement<FeedbackList, FeedbackListState>
      createElement() {
    return _FeedbackListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FeedbackListProvider && other.params == params;
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
mixin FeedbackListRef on AutoDisposeNotifierProviderRef<FeedbackListState> {
  /// The parameter `params` of this provider.
  FeedbackParamsModel? get params;
}

class _FeedbackListProviderElement
    extends AutoDisposeNotifierProviderElement<FeedbackList, FeedbackListState>
    with FeedbackListRef {
  _FeedbackListProviderElement(super.provider);

  @override
  FeedbackParamsModel? get params => (origin as FeedbackListProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
