// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_card_state_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCardStateState {
  ProductEntity get product => throw _privateConstructorUsedError;
  List<ModifierItemEntity> get selectedModifiers =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCardStateStateCopyWith<ProductCardStateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCardStateStateCopyWith<$Res> {
  factory $ProductCardStateStateCopyWith(ProductCardStateState value,
          $Res Function(ProductCardStateState) then) =
      _$ProductCardStateStateCopyWithImpl<$Res, ProductCardStateState>;
  @useResult
  $Res call(
      {ProductEntity product, List<ModifierItemEntity> selectedModifiers});
}

/// @nodoc
class _$ProductCardStateStateCopyWithImpl<$Res,
        $Val extends ProductCardStateState>
    implements $ProductCardStateStateCopyWith<$Res> {
  _$ProductCardStateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? selectedModifiers = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      selectedModifiers: null == selectedModifiers
          ? _value.selectedModifiers
          : selectedModifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierItemEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductCardStateStateImplCopyWith<$Res>
    implements $ProductCardStateStateCopyWith<$Res> {
  factory _$$ProductCardStateStateImplCopyWith(
          _$ProductCardStateStateImpl value,
          $Res Function(_$ProductCardStateStateImpl) then) =
      __$$ProductCardStateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductEntity product, List<ModifierItemEntity> selectedModifiers});
}

/// @nodoc
class __$$ProductCardStateStateImplCopyWithImpl<$Res>
    extends _$ProductCardStateStateCopyWithImpl<$Res,
        _$ProductCardStateStateImpl>
    implements _$$ProductCardStateStateImplCopyWith<$Res> {
  __$$ProductCardStateStateImplCopyWithImpl(_$ProductCardStateStateImpl _value,
      $Res Function(_$ProductCardStateStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? selectedModifiers = null,
  }) {
    return _then(_$ProductCardStateStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductEntity,
      selectedModifiers: null == selectedModifiers
          ? _value._selectedModifiers
          : selectedModifiers // ignore: cast_nullable_to_non_nullable
              as List<ModifierItemEntity>,
    ));
  }
}

/// @nodoc

class _$ProductCardStateStateImpl implements _ProductCardStateState {
  const _$ProductCardStateStateImpl(
      {required this.product,
      final List<ModifierItemEntity> selectedModifiers = const []})
      : _selectedModifiers = selectedModifiers;

  @override
  final ProductEntity product;
  final List<ModifierItemEntity> _selectedModifiers;
  @override
  @JsonKey()
  List<ModifierItemEntity> get selectedModifiers {
    if (_selectedModifiers is EqualUnmodifiableListView)
      return _selectedModifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedModifiers);
  }

  @override
  String toString() {
    return 'ProductCardStateState(product: $product, selectedModifiers: $selectedModifiers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCardStateStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._selectedModifiers, _selectedModifiers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_selectedModifiers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCardStateStateImplCopyWith<_$ProductCardStateStateImpl>
      get copyWith => __$$ProductCardStateStateImplCopyWithImpl<
          _$ProductCardStateStateImpl>(this, _$identity);
}

abstract class _ProductCardStateState implements ProductCardStateState {
  const factory _ProductCardStateState(
          {required final ProductEntity product,
          final List<ModifierItemEntity> selectedModifiers}) =
      _$ProductCardStateStateImpl;

  @override
  ProductEntity get product;
  @override
  List<ModifierItemEntity> get selectedModifiers;
  @override
  @JsonKey(ignore: true)
  _$$ProductCardStateStateImplCopyWith<_$ProductCardStateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
