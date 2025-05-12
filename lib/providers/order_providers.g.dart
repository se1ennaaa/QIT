// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderListHash() => r'8b8e3baf1119d8d32cb01b87b5aab75fc440ace9';

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

abstract class _$OrderList
    extends BuildlessAutoDisposeNotifier<OrderListState> {
  late final OrderParamsModel? params;

  OrderListState build({
    OrderParamsModel? params,
  });
}

/// See also [OrderList].
@ProviderFor(OrderList)
const orderListProvider = OrderListFamily();

/// See also [OrderList].
class OrderListFamily extends Family<OrderListState> {
  /// See also [OrderList].
  const OrderListFamily();

  /// See also [OrderList].
  OrderListProvider call({
    OrderParamsModel? params,
  }) {
    return OrderListProvider(
      params: params,
    );
  }

  @override
  OrderListProvider getProviderOverride(
    covariant OrderListProvider provider,
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
  String? get name => r'orderListProvider';
}

/// See also [OrderList].
class OrderListProvider
    extends AutoDisposeNotifierProviderImpl<OrderList, OrderListState> {
  /// See also [OrderList].
  OrderListProvider({
    OrderParamsModel? params,
  }) : this._internal(
          () => OrderList()..params = params,
          from: orderListProvider,
          name: r'orderListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderListHash,
          dependencies: OrderListFamily._dependencies,
          allTransitiveDependencies: OrderListFamily._allTransitiveDependencies,
          params: params,
        );

  OrderListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final OrderParamsModel? params;

  @override
  OrderListState runNotifierBuild(
    covariant OrderList notifier,
  ) {
    return notifier.build(
      params: params,
    );
  }

  @override
  Override overrideWith(OrderList Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderListProvider._internal(
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
  AutoDisposeNotifierProviderElement<OrderList, OrderListState>
      createElement() {
    return _OrderListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderListProvider && other.params == params;
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
mixin OrderListRef on AutoDisposeNotifierProviderRef<OrderListState> {
  /// The parameter `params` of this provider.
  OrderParamsModel? get params;
}

class _OrderListProviderElement
    extends AutoDisposeNotifierProviderElement<OrderList, OrderListState>
    with OrderListRef {
  _OrderListProviderElement(super.provider);

  @override
  OrderParamsModel? get params => (origin as OrderListProvider).params;
}

String _$orderDetailsHash() => r'eb827e91295ed5dd0149b73992b6ae4d7f303ba0';

abstract class _$OrderDetails
    extends BuildlessAutoDisposeAsyncNotifier<OrderDetailsModel> {
  late final int id;

  FutureOr<OrderDetailsModel> build(
    int id,
  );
}

/// See also [OrderDetails].
@ProviderFor(OrderDetails)
const orderDetailsProvider = OrderDetailsFamily();

/// See also [OrderDetails].
class OrderDetailsFamily extends Family<AsyncValue<OrderDetailsModel>> {
  /// See also [OrderDetails].
  const OrderDetailsFamily();

  /// See also [OrderDetails].
  OrderDetailsProvider call(
    int id,
  ) {
    return OrderDetailsProvider(
      id,
    );
  }

  @override
  OrderDetailsProvider getProviderOverride(
    covariant OrderDetailsProvider provider,
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
  String? get name => r'orderDetailsProvider';
}

/// See also [OrderDetails].
class OrderDetailsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    OrderDetails, OrderDetailsModel> {
  /// See also [OrderDetails].
  OrderDetailsProvider(
    int id,
  ) : this._internal(
          () => OrderDetails()..id = id,
          from: orderDetailsProvider,
          name: r'orderDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderDetailsHash,
          dependencies: OrderDetailsFamily._dependencies,
          allTransitiveDependencies:
              OrderDetailsFamily._allTransitiveDependencies,
          id: id,
        );

  OrderDetailsProvider._internal(
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
  FutureOr<OrderDetailsModel> runNotifierBuild(
    covariant OrderDetails notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(OrderDetails Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderDetailsProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<OrderDetails, OrderDetailsModel>
      createElement() {
    return _OrderDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderDetailsProvider && other.id == id;
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
mixin OrderDetailsRef
    on AutoDisposeAsyncNotifierProviderRef<OrderDetailsModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _OrderDetailsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<OrderDetails,
        OrderDetailsModel> with OrderDetailsRef {
  _OrderDetailsProviderElement(super.provider);

  @override
  int get id => (origin as OrderDetailsProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
