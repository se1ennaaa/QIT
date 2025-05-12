import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_form_model.freezed.dart';
part 'dynamic_form_model.g.dart';

enum Gender {
  @JsonValue('male')
  male,
  @JsonValue('female')
  female,
  @JsonValue('both')
  both;

  bool get isMale => this == male;
  bool get isFemale => this == female;
  bool get isBoth => this == both;
}

@freezed
class DynamicFormModel with _$DynamicFormModel {
  const DynamicFormModel._();
  const factory DynamicFormModel({
    @Default([])
    @JsonKey(includeToJson: false, includeFromJson: false)
    final List<dynamic> images,
    final String? title,
    final int? category,
    final String? address,
    final String? quantity,
    final String? productiveCapacity,
    final String? productionExperience,
    final String? description,
    final String? whatsApp,
    final String? phoneNumber,
    final String? price,
    final String? deadline,
    final String? workExperience,
    final String? courseFormat,
    final String? placeOfWork,
    final String? salary,
    final String? jobTitle,
    final String? age,
    final String? gender,
    final String? square,
    final String? regionOfConsideration,
  }) = _CreatedGameModel;

  factory DynamicFormModel.fromJson(Map<String, dynamic> json) =>
      _$DynamicFormModelFromJson(json);

  Map<String, dynamic> toMap() {
    return {
      if (images.isNotEmpty) 'image': images[0],
      if (images.isNotEmpty) 'images': images, //1
      if (title != null) 'name': title, //3
      if (title != null) 'title': title, //3
      if (title != null) 'fullName': title, //3
      if (title != null) 'full_name': title, //3
      if (category != null) 'category_id': category, //1
      if (address != null) 'address': address, //1
      if (address != null) 'teaching_address': address, //1

      if (quantity != null) 'count': int.parse(quantity!), //1

      if (productiveCapacity != null) 'production_capacity': productiveCapacity,
      if (productionExperience != null)
        'production_service_life': productionExperience, //1
      if (description != null) 'description': description, //1
      if (whatsApp != null) 'whatsapp': whatsApp?.replaceAll(' ', ''),
      if (phoneNumber != null)
        'phone_number': phoneNumber?.replaceAll(' ', ''), //1
      if (price != null) 'price': int.parse(price!),
      if (price != null) 'rate': int.parse(price!), // 1
      if (deadline != null) 'execution_deadline': deadline,
      if (workExperience != null) 'experience_key': workExperience, //2
      if (workExperience != null) 'experience': workExperience, //1
      if (workExperience != null) 'work_experience': workExperience, //2
      if (courseFormat != null) 'teaching_format': courseFormat, //1

      if (placeOfWork != null) 'address': placeOfWork, //1
      if (salary != null) 'salary': salary, // 4
      if (salary != null) 'expected_salary': salary, // 4
      if (jobTitle != null) 'position': jobTitle, // 1
      if (age != null) 'age': int.parse(age!),
      if (gender != null) 'gender': gender,
      if (square != null) 'area': square, //1
      if (regionOfConsideration != null)
        'region_consideration': regionOfConsideration
    };
  }
}
