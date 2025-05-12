// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notificationListHash() => r'13fc1a7dfbec14d05b1f4a127b810099c35355e8';

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

abstract class _$NotificationList
    extends BuildlessAutoDisposeNotifier<NotificationListState> {
  late final NotificationParamsModel? params;

  NotificationListState build({
    NotificationParamsModel? params,
  });
}

/// See also [NotificationList].
@ProviderFor(NotificationList)
const notificationListProvider = NotificationListFamily();

/// See also [NotificationList].
class NotificationListFamily extends Family<NotificationListState> {
  /// See also [NotificationList].
  const NotificationListFamily();

  /// See also [NotificationList].
  NotificationListProvider call({
    NotificationParamsModel? params,
  }) {
    return NotificationListProvider(
      params: params,
    );
  }

  @override
  NotificationListProvider getProviderOverride(
    covariant NotificationListProvider provider,
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
  String? get name => r'notificationListProvider';
}

/// See also [NotificationList].
class NotificationListProvider extends AutoDisposeNotifierProviderImpl<
    NotificationList, NotificationListState> {
  /// See also [NotificationList].
  NotificationListProvider({
    NotificationParamsModel? params,
  }) : this._internal(
          () => NotificationList()..params = params,
          from: notificationListProvider,
          name: r'notificationListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationListHash,
          dependencies: NotificationListFamily._dependencies,
          allTransitiveDependencies:
              NotificationListFamily._allTransitiveDependencies,
          params: params,
        );

  NotificationListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final NotificationParamsModel? params;

  @override
  NotificationListState runNotifierBuild(
    covariant NotificationList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(NotificationList Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationListProvider._internal(
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
  AutoDisposeNotifierProviderElement<NotificationList, NotificationListState>
      createElement() {
    return _NotificationListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationListProvider && other.params == params;
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
mixin NotificationListRef
    on AutoDisposeNotifierProviderRef<NotificationListState> {
  /// The parameter `params` of this provider.
  NotificationParamsModel? get params;
}

class _NotificationListProviderElement
    extends AutoDisposeNotifierProviderElement<NotificationList,
        NotificationListState> with NotificationListRef {
  _NotificationListProviderElement(super.provider);

  @override
  NotificationParamsModel? get params =>
      (origin as NotificationListProvider).params;
}

String _$notificationDetailsHash() =>
    r'1a6eead0458be9a5167ac8cee4eb1d991015d784';

abstract class _$NotificationDetails
    extends BuildlessAutoDisposeAsyncNotifier<NotificationDetailsModel> {
  late final int id;

  FutureOr<NotificationDetailsModel> build(
    int id,
  );
}

/// See also [NotificationDetails].
@ProviderFor(NotificationDetails)
const notificationDetailsProvider = NotificationDetailsFamily();

/// See also [NotificationDetails].
class NotificationDetailsFamily
    extends Family<AsyncValue<NotificationDetailsModel>> {
  /// See also [NotificationDetails].
  const NotificationDetailsFamily();

  /// See also [NotificationDetails].
  NotificationDetailsProvider call(
    int id,
  ) {
    return NotificationDetailsProvider(
      id,
    );
  }

  @override
  NotificationDetailsProvider getProviderOverride(
    covariant NotificationDetailsProvider provider,
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
  String? get name => r'notificationDetailsProvider';
}

/// See also [NotificationDetails].
class NotificationDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    NotificationDetails, NotificationDetailsModel> {
  /// See also [NotificationDetails].
  NotificationDetailsProvider(
    int id,
  ) : this._internal(
          () => NotificationDetails()..id = id,
          from: notificationDetailsProvider,
          name: r'notificationDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$notificationDetailsHash,
          dependencies: NotificationDetailsFamily._dependencies,
          allTransitiveDependencies:
              NotificationDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  NotificationDetailsProvider._internal(
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
  FutureOr<NotificationDetailsModel> runNotifierBuild(
    covariant NotificationDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(NotificationDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: NotificationDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<NotificationDetails,
      NotificationDetailsModel> createElement() {
    return _NotificationDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is NotificationDetailsProvider && other.id == id;
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
mixin NotificationDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<NotificationDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _NotificationDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<NotificationDetails,
        NotificationDetailsModel> with NotificationDetailsRef {
  _NotificationDetailsProviderElement(super.provider);

  @override
  int get id => (origin as NotificationDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
