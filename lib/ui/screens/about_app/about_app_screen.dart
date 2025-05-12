import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../widgets/app_bars/custom_app_bar.dart';

class AboutAppScreen extends HookWidget {
  const AboutAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeAreaWrapper(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                title: 'О приложении',
              ),
              Gap(20),
              _buildTitle(context),
              Gap(20),
              _buildDescription(context),
              Gap(20),
              Center(
                child: FutureBuilder(
                  future: PackageInfo.fromPlatform(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData || snapshot.data == null) {
                      return Text('Error: Package info not available');
                    } else {
                      final packageInfo = snapshot.data as PackageInfo;

                      return Text('Версия ${packageInfo.version}');
                    }
                  },
                ),
              ),
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
      child: Text(
        'Наше приложение создано специально для людей, работающих в швейной промышленности, а также для тех, кто ищет швейные услуги или материалы. Мы понимаем, насколько важно иметь удобный и эффективный инструмент для взаимодействия между мастерами, предприятиями и клиентами.\n\n'
        'С помощью нашего приложения вы можете:\n'
        '- Создавать объявления о продаже, покупке или аренде оборудования для швейного производства.\n'
        '- Искать квалифицированных мастеров и предлагать свои услуги.\n'
        '- Публиковать запросы на выполнение заказов, таких как пошив одежды, ремонт тканей, создание индивидуальных изделий и многое другое.\n'
        '- Искать материалы, ткани и фурнитуру, необходимые для работы.\n\n'
        'Наше приложение уже активно тестируется, чтобы обеспечить высокое качество и удобство для пользователей. В ближайшее время мы планируем добавить:\n'
        '- Возможность безопасных сделок внутри приложения.\n'
        '- Функцию отзывов и рейтингов для мастеров и поставщиков.\n'
        '- Расширенные инструменты фильтрации и поиска.\n\n'
        'Мы благодарим вас за использование нашего приложения и надеемся, что оно станет полезным инструментом в вашей работе. Если у вас есть вопросы, предложения или замечания, пожалуйста, свяжитесь с нашей службой поддержки. Мы всегда рады вашим отзывам и готовы сделать наш продукт ещё лучше!',
        style: TextStyle(
          fontSize: 14,
          letterSpacing: -.2,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Center(
      child: Text(
        'Добро пожаловать в наше приложение!',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
