import 'package:chelnok_mob/data/models/api_reponse.dart';
import 'package:chelnok_mob/data/models/dynamic_form_model.dart';
import 'package:chelnok_mob/providers/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ad_management_provider.g.dart';
part 'ad_management_provider.freezed.dart';

enum AdManagementStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}

@freezed
class AdManagementState with _$AdManagementState {
  const factory AdManagementState({
    @Default(AdManagementStatus.initial) AdManagementStatus status,
    @Default(DynamicFormModel()) DynamicFormModel model,
    String? error,
  }) = _AdManagementState;

  factory AdManagementState.initial() => const AdManagementState(
        status: AdManagementStatus.initial,
      );
}

@riverpod
class AdManagement extends _$AdManagement {
  @override
  AdManagementState build() {
    return AdManagementState.initial();
  }

  void cacheModel(DynamicFormModel model) {
    state = state.copyWith(
      model: state.model.copyWith(
        images: model.images.isNotEmpty
            ? [...state.model.images, ...model.images]
            : state.model.images,
        category: model.category ?? state.model.category,
        title: model.title ?? state.model.title,
        address: model.address ?? state.model.address,
        productiveCapacity:
            model.productiveCapacity ?? state.model.productiveCapacity,
        productionExperience:
            model.productionExperience ?? state.model.productionExperience,
        description: model.description ?? state.model.description,
        price: model.price ?? state.model.price,
        whatsApp: model.whatsApp ?? state.model.whatsApp,
        deadline: model.deadline ?? state.model.deadline,
        quantity: model.quantity ?? state.model.quantity,
        workExperience: model.workExperience ?? state.model.workExperience,
        courseFormat: model.courseFormat ?? state.model.courseFormat,
        placeOfWork: model.placeOfWork ?? state.model.placeOfWork,
        salary: model.salary ?? state.model.salary,
        jobTitle: model.jobTitle ?? state.model.jobTitle,
        age: model.age ?? state.model.age,
        gender: model.gender ?? state.model.gender,
        square: model.square ?? state.model.square,
        regionOfConsideration:
            model.regionOfConsideration ?? state.model.regionOfConsideration,
        phoneNumber: model.phoneNumber ?? state.model.phoneNumber,
      ),
    );
  }

  void removeImage(int index) {
    final list = List<dynamic>.from(state.model.images);
    list.removeAt(index);
    state = state.copyWith(
      model: state.model.copyWith(images: list),
    );
  }

  Future<void> uploadAdData(FormType type) async {
    state = state.copyWith(status: AdManagementStatus.loading);
    ApiResponse result = ApiResponse();

    if (type.isSewingWorkshop) {
      result = await ref
          .read(sewingWorkshopRepoProvider)
          .createSewingWorkshop(state.model);
    } else if (type.isOrder) {
      result = await ref.read(orderRepoProvider).createOrder(state.model);
    } else if (type.isMadinaMarket) {
      result = await ref
          .read(madinaMarketRepoProvider)
          .createMadinaContainer(state.model);
    } else if (type.isFulfilment) {
      result =
          await ref.read(fulfilmentRepoProvider).createFulfilment(state.model);
    } else if (type.isManager) {
      result = await ref.read(managerRepoProvider).createManager(state.model);
    } else if (type.isService) {
      result = await ref.read(serviceRepoProvider).createService(state.model);
    } else if (type.isVacancy) {
      result = await ref.read(vacancyRepoProvider).createVacancy(state.model);
    } else if (type.isResume) {
      result = await ref.read(resumeRepoProvider).createResume(state.model);
    } else if (type.isCourse) {
      result = await ref.read(courseRepoProvider).createCourse(state.model);
    } else if (type.isRealEstate) {
      result =
          await ref.read(realEstateRepoProvider).createRealEstate(state.model);
    } else if (type.isSewingEquipment) {
      result = await ref
          .read(sewingEquipmentRepoProvider)
          .createSewingEquipment(state.model);
    } else if (type.isHomeWorker) {
      result =
          await ref.read(homeWorkerRepoProvider).createHomeWorker(state.model);
    }

    if (result.isSuccessful) {
      state = state.copyWith(status: AdManagementStatus.success);
    } else {
      var errorMessages = [];
      print({
        result.errorData['message'] != null,
        result.errorData['message'].contains('whatsapp')
      });

      if (result.errorData['message'] != null &&
          result.errorData['message']
                  ?.any((msg) => msg is String && msg.contains('whatsapp')) ==
              true) {
        errorMessages.add('Неверный номер WhatsApp.');
      }

      if (result.errorData['message'] != null &&
          result.errorData['message']?.any(
                  (msg) => msg is String && msg.contains('phone_number')) ==
              true) {
        errorMessages.add('Неверный номер телефона.');
      }

      if (errorMessages.isNotEmpty) {
        state = state.copyWith(
          status: AdManagementStatus.error,
          error: errorMessages.join(' '),
        );
        return;
      }
      state = state.copyWith(
        status: AdManagementStatus.error,
        error: result.errorData.toString(),
      );
      state = state.copyWith(
        error: null,
      );
    }
  }

  Future<void> editAdData(FormType type, int id) async {
    state = state.copyWith(status: AdManagementStatus.loading);
    ApiResponse result = ApiResponse();

    if (type.isSewingWorkshop) {
      result = await ref
          .read(sewingWorkshopRepoProvider)
          .editSewingWorkshop(state.model, id);
    } else if (type.isOrder) {
      result = await ref.read(orderRepoProvider).editOrder(state.model, id);
    } else if (type.isMadinaMarket) {
      result = await ref
          .read(madinaMarketRepoProvider)
          .editMadinaContainer(state.model, id);
    } else if (type.isFulfilment) {
      result = await ref
          .read(fulfilmentRepoProvider)
          .editFulfilment(state.model, id);
    } else if (type.isManager) {
      result = await ref.read(managerRepoProvider).editManager(state.model, id);
    } else if (type.isService) {
      result = await ref.read(serviceRepoProvider).editService(state.model, id);
    } else if (type.isVacancy) {
      result = await ref.read(vacancyRepoProvider).editVacancy(state.model, id);
    } else if (type.isResume) {
      result = await ref.read(resumeRepoProvider).editResume(state.model, id);
    } else if (type.isCourse) {
      result = await ref.read(courseRepoProvider).editCourse(state.model, id);
    } else if (type.isRealEstate) {
      result = await ref
          .read(realEstateRepoProvider)
          .editRealEstate(state.model, id);
    } else if (type.isSewingEquipment) {
      result = await ref
          .read(sewingEquipmentRepoProvider)
          .editSewingEquipment(state.model, id);
    } else if (type.isHomeWorker) {
      result =
          await ref.read(homeWorkerRepoProvider).createHomeWorker(state.model);
    }

    if (result.isSuccessful) {
      state = state.copyWith(status: AdManagementStatus.success);
    } else {
      state = state.copyWith(
        status: AdManagementStatus.error,
        error: result.errorData.toString(),
      );
      state = state.copyWith(
        error: null,
      );
    }
  }
}

enum FormType {
  sewingWorkshop,
  order,
  madinaMarket,
  dordoiMarket,
  fulfilment,
  manager,
  course,
  service,
  vacancy,
  resume,

  realEstate,
  sewingEquipment,
  homeWorker;

  bool get isSewingWorkshop => this == sewingWorkshop;
  bool get isOrder => this == order;
  bool get isMadinaMarket => this == madinaMarket;
  bool get isDordoiMarket => this == dordoiMarket;
  bool get isFulfilment => this == fulfilment;
  bool get isManager => this == manager;
  bool get isCourse => this == course;
  bool get isService => this == service;
  bool get isVacancy => this == vacancy;
  bool get isResume => this == resume;

  bool get isRealEstate => this == realEstate;
  bool get isSewingEquipment => this == sewingEquipment;
  bool get isHomeWorker => this == homeWorker;
}
