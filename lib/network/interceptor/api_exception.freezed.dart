// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  int? get statusCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiExceptionCopyWith<ApiException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res, ApiException>;
  @useResult
  $Res call({String? message, String? code, int? statusCode});
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res, $Val extends ApiException>
    implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BadRequestCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$BadRequestCopyWith(
          _$BadRequest value, $Res Function(_$BadRequest) then) =
      __$$BadRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$BadRequestCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$BadRequest>
    implements _$$BadRequestCopyWith<$Res> {
  __$$BadRequestCopyWithImpl(
      _$BadRequest _value, $Res Function(_$BadRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$BadRequest(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.badRequest(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequest &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      __$$BadRequestCopyWithImpl<_$BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return badRequest(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return badRequest?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements ApiException {
  const factory BadRequest(final String path, final String? message,
      final String? code, final int? statusCode) = _$BadRequest;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$BadRequestCopyWith<_$BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$UnauthorizedCopyWith(
          _$Unauthorized value, $Res Function(_$Unauthorized) then) =
      __$$UnauthorizedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$UnauthorizedCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$Unauthorized>
    implements _$$UnauthorizedCopyWith<$Res> {
  __$$UnauthorizedCopyWithImpl(
      _$Unauthorized _value, $Res Function(_$Unauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$Unauthorized(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.unauthorized(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Unauthorized &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      __$$UnauthorizedCopyWithImpl<_$Unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return unauthorized(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return unauthorized?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements ApiException {
  const factory Unauthorized(final String path, final String? message,
      final String? code, final int? statusCode) = _$Unauthorized;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$UnauthorizedCopyWith<_$Unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForbiddenCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ForbiddenCopyWith(
          _$Forbidden value, $Res Function(_$Forbidden) then) =
      __$$ForbiddenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$ForbiddenCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$Forbidden>
    implements _$$ForbiddenCopyWith<$Res> {
  __$$ForbiddenCopyWithImpl(
      _$Forbidden _value, $Res Function(_$Forbidden) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$Forbidden(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Forbidden implements Forbidden {
  const _$Forbidden(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.forbidden(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Forbidden &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForbiddenCopyWith<_$Forbidden> get copyWith =>
      __$$ForbiddenCopyWithImpl<_$Forbidden>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return forbidden(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return forbidden?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class Forbidden implements ApiException {
  const factory Forbidden(final String path, final String? message,
      final String? code, final int? statusCode) = _$Forbidden;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ForbiddenCopyWith<_$Forbidden> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NotFoundCopyWith(
          _$NotFound value, $Res Function(_$NotFound) then) =
      __$$NotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$NotFoundCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NotFound>
    implements _$$NotFoundCopyWith<$Res> {
  __$$NotFoundCopyWithImpl(_$NotFound _value, $Res Function(_$NotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$NotFound(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.notFound(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFound &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundCopyWith<_$NotFound> get copyWith =>
      __$$NotFoundCopyWithImpl<_$NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return notFound(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return notFound?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements ApiException {
  const factory NotFound(final String path, final String? message,
      final String? code, final int? statusCode) = _$NotFound;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundCopyWith<_$NotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$InternalServerErrorCopyWith(_$InternalServerError value,
          $Res Function(_$InternalServerError) then) =
      __$$InternalServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$InternalServerErrorCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$InternalServerError>
    implements _$$InternalServerErrorCopyWith<$Res> {
  __$$InternalServerErrorCopyWithImpl(
      _$InternalServerError _value, $Res Function(_$InternalServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$InternalServerError(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$InternalServerError implements InternalServerError {
  const _$InternalServerError(
      this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.internalServerError(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerError &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorCopyWith<_$InternalServerError> get copyWith =>
      __$$InternalServerErrorCopyWithImpl<_$InternalServerError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return internalServerError(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return internalServerError?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return internalServerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return internalServerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (internalServerError != null) {
      return internalServerError(this);
    }
    return orElse();
  }
}

abstract class InternalServerError implements ApiException {
  const factory InternalServerError(final String path, final String? message,
      final String? code, final int? statusCode) = _$InternalServerError;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$InternalServerErrorCopyWith<_$InternalServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$NoConnectionCopyWith(
          _$NoConnection value, $Res Function(_$NoConnection) then) =
      __$$NoConnectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$NoConnectionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$NoConnection>
    implements _$$NoConnectionCopyWith<$Res> {
  __$$NoConnectionCopyWithImpl(
      _$NoConnection _value, $Res Function(_$NoConnection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$NoConnection(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NoConnection implements NoConnection {
  const _$NoConnection(this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.noConnection(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnection &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionCopyWith<_$NoConnection> get copyWith =>
      __$$NoConnectionCopyWithImpl<_$NoConnection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return noConnection(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return noConnection?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection implements ApiException {
  const factory NoConnection(final String path, final String? message,
      final String? code, final int? statusCode) = _$NoConnection;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionCopyWith<_$NoConnection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtherCopyWith<$Res> implements $ApiExceptionCopyWith<$Res> {
  factory _$$OtherCopyWith(_$Other value, $Res Function(_$Other) then) =
      __$$OtherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$OtherCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$Other>
    implements _$$OtherCopyWith<$Res> {
  __$$OtherCopyWithImpl(_$Other _value, $Res Function(_$Other) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$Other(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Other implements Other {
  const _$Other(this.message, this.code, this.statusCode);

  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.other(message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Other &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherCopyWith<_$Other> get copyWith =>
      __$$OtherCopyWithImpl<_$Other>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return other(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return other?.call(message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return other(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return other?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (other != null) {
      return other(this);
    }
    return orElse();
  }
}

abstract class Other implements ApiException {
  const factory Other(
          final String? message, final String? code, final int? statusCode) =
      _$Other;

  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$OtherCopyWith<_$Other> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerMaintenanceCopyWith<$Res>
    implements $ApiExceptionCopyWith<$Res> {
  factory _$$ServerMaintenanceCopyWith(
          _$ServerMaintenance value, $Res Function(_$ServerMaintenance) then) =
      __$$ServerMaintenanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path, String? message, String? code, int? statusCode});
}

/// @nodoc
class __$$ServerMaintenanceCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res, _$ServerMaintenance>
    implements _$$ServerMaintenanceCopyWith<$Res> {
  __$$ServerMaintenanceCopyWithImpl(
      _$ServerMaintenance _value, $Res Function(_$ServerMaintenance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? message = freezed,
    Object? code = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerMaintenance(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerMaintenance implements ServerMaintenance {
  const _$ServerMaintenance(
      this.path, this.message, this.code, this.statusCode);

  @override
  final String path;
  @override
  final String? message;
  @override
  final String? code;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'ApiException.maintenance(path: $path, message: $message, code: $code, statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerMaintenance &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, message, code, statusCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerMaintenanceCopyWith<_$ServerMaintenance> get copyWith =>
      __$$ServerMaintenanceCopyWithImpl<_$ServerMaintenance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        badRequest,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        unauthorized,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        forbidden,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        notFound,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        internalServerError,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        noConnection,
    required TResult Function(String? message, String? code, int? statusCode)
        other,
    required TResult Function(
            String path, String? message, String? code, int? statusCode)
        maintenance,
  }) {
    return maintenance(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult? Function(String? message, String? code, int? statusCode)? other,
    TResult? Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
  }) {
    return maintenance?.call(path, message, code, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        badRequest,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        unauthorized,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        forbidden,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        notFound,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        internalServerError,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        noConnection,
    TResult Function(String? message, String? code, int? statusCode)? other,
    TResult Function(
            String path, String? message, String? code, int? statusCode)?
        maintenance,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance(path, message, code, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(Forbidden value) forbidden,
    required TResult Function(NotFound value) notFound,
    required TResult Function(InternalServerError value) internalServerError,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(Other value) other,
    required TResult Function(ServerMaintenance value) maintenance,
  }) {
    return maintenance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BadRequest value)? badRequest,
    TResult? Function(Unauthorized value)? unauthorized,
    TResult? Function(Forbidden value)? forbidden,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(InternalServerError value)? internalServerError,
    TResult? Function(NoConnection value)? noConnection,
    TResult? Function(Other value)? other,
    TResult? Function(ServerMaintenance value)? maintenance,
  }) {
    return maintenance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BadRequest value)? badRequest,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(Forbidden value)? forbidden,
    TResult Function(NotFound value)? notFound,
    TResult Function(InternalServerError value)? internalServerError,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(Other value)? other,
    TResult Function(ServerMaintenance value)? maintenance,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance(this);
    }
    return orElse();
  }
}

abstract class ServerMaintenance implements ApiException {
  const factory ServerMaintenance(final String path, final String? message,
      final String? code, final int? statusCode) = _$ServerMaintenance;

  String get path;
  @override
  String? get message;
  @override
  String? get code;
  @override
  int? get statusCode;
  @override
  @JsonKey(ignore: true)
  _$$ServerMaintenanceCopyWith<_$ServerMaintenance> get copyWith =>
      throw _privateConstructorUsedError;
}
