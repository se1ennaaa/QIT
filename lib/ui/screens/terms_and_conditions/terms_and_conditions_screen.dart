import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../widgets/app_bars/custom_app_bar.dart';

class TermsAndConditionsScreen extends HookWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeAreaWrapper(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: 'Условия и правила',
              ),
              Gap(20),
              _buildTitle(context,
                  'Политика конфиденциальности и Условия использования'),
              Gap(20),
              _buildDescription(context),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14,
            letterSpacing: -.2,
            fontWeight: FontWeight.w400,
            color: Colors.black, // Указываем цвет, иначе текст будет серым
          ),
          children: [
            TextSpan(
              text:
                  'Настоящий документ объединяет Политику конфиденциальности и Условия использования мобильного приложения «Chelnok». '
                  'Используя приложение, вы соглашаетесь с указанными ниже условиями. Если вы не согласны с данными условиями, '
                  'пожалуйста, воздержитесь от использования приложения.\n\n',
            ),
            TextSpan(
              text: '1. Персональная информация пользователей\n',
              style: TextStyle(
                fontWeight: FontWeight.bold, // Жирный заголовок
                fontSize: 14,
              ),
            ),
            TextSpan(
              text:
                  'Мы собираем и обрабатываем вашу информацию в соответствии с законодательством Кыргызской Республики. '
                  'Ваши данные используются только для предоставления услуг и улучшения качества приложения.\n\n',
            ),
            TextSpan(
              text: '2. Условия использования\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text:
                  'Вы обязаны использовать приложение в рамках законодательства и не нарушать права других пользователей.\n\n',
            ),
            TextSpan(
              text: '3. Конфиденциальность\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text:
                  'Мы обеспечиваем защиту ваших персональных данных от несанкционированного доступа и используем их только в указанных целях.\n\n',
            ),
            TextSpan(
              text: '4. Изменения\n',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            TextSpan(
              text:
                  'Мы оставляем за собой право изменять данную Политику и Условия. '
                  'Актуальная версия всегда доступна в приложении.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
