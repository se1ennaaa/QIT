// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackModelImpl _$$FeedbackModelImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackModelImpl(
      id: (json['id'] as num).toInt(),
      createAt: json['createAt'] == null
          ? null
          : DateTime.parse(json['createAt'] as String),
      text: json['text'] as String?,
      user: json['user'] == null
          ? null
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      type: json['type'] as String?,
      typeId: (json['type_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FeedbackModelImplToJson(_$FeedbackModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createAt': instance.createAt?.toIso8601String(),
      'text': instance.text,
      'user': instance.user,
      'rating': instance.rating,
      'type': instance.type,
      'type_id': instance.typeId,
    };

_$FeedbackParamsModelImpl _$$FeedbackParamsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackParamsModelImpl(
      page: (json['page'] as num?)?.toInt() ?? 1,
      type: json['type'] as String?,
      typeId: (json['type_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FeedbackParamsModelImplToJson(
        _$FeedbackParamsModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'type': instance.type,
      'type_id': instance.typeId,
    };
