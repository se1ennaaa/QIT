import 'package:chelnok_mob/providers/ad_management_provider.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SuccessConfirmationScreen extends StatelessWidget {
  const SuccessConfirmationScreen({
    super.key,
    this.type,
    this.isEditSuccess = false,
  });

  final FormType? type;
  final bool isEditSuccess;

  @override
  Widget build(BuildContext context) {
    return SafeAreaWrapper(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Container(
              width: 88,
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xFFF6EFF7),
              ),
              child: SvgPicture.asset('assets/svg/checkmark_badge.svg'),
            ),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                isEditSuccess
                    ? 'Успешно отредактировано!'
                    : getSuccessMessage(type),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Gap(14),
            if (!isEditSuccess)
              Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xFFF6EFF7),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: EdgeInsets.symmetric(horizontal: 46),
                alignment: Alignment.center,
                child: Text(
                  'Добавленное объявление можно\nредактировать в профиле',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF6E6E6E),
                  ),
                ),
              ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 52,
                margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Color(0xFF9605AC),
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Продолжить',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Gap(30),
          ],
        ),
      ),
    );
  }

  String getSuccessMessage(FormType? type) {
    switch (type) {
      case FormType.sewingWorkshop:
        return 'Швейный цех успешно добавлен!';
      case FormType.order:
        return 'Заказ успешно добавлен!';
      case FormType.madinaMarket:
        return 'Контейнер успешно добавлен!';
      case FormType.fulfilment:
        return 'Фулфилмент успешно добавлен!';
      case FormType.manager:
        return 'Менеджер успешно добавлен!';
      case FormType.course:
        return 'Курс успешно добавлен!';
      case FormType.service:
        return 'Услуга успешно добавлена!';
      case FormType.vacancy:
        return 'Вакансия успешно добавлена!';
      case FormType.resume:
        return 'Резюме успешно добавлено!';
      case FormType.homeWorker:
        return 'Надомник успешно добавлен!';
      case FormType.dordoiMarket:
        return 'Контейнер успешно добавлен!';
      default:
        return 'Объявление успешно добавлено!';
    }
  }
}
