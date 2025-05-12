import 'package:chelnok_mob/data/storage/local_storage.dart';
import 'package:chelnok_mob/ui/navigation_bar_view.dart';
import 'package:chelnok_mob/ui/screens/auth/login/login_screen.dart';
import 'package:chelnok_mob/ui/screens/home/home_screen.dart';
import 'package:chelnok_mob/ui/widgets/continue_elevated_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/safe_area_wrapper.dart';

List<MapEntry<String, String>> getOnboardingList() => [
      MapEntry('assets/images/onboarding_first_illustration.png',
          'Добро пожаловать в приложение Челнок!'),
      MapEntry('assets/images/onboarding_second_illustration.png',
          'Находи поставщиков быстро и легко!'),
      MapEntry('assets/images/onboarding_third_illustration.png',
          'Самые надёжные исполнители!'),
    ];

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(initialPage: 0);
    final currentIndex = useState(0);
    return SafeAreaWrapper(
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                SvgPicture.asset(
                  'assets/svg/onboarding_background_circle.svg',
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      LocalStorage().firstRun = false;
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationBarView()),
                        (_) {
                          return false;
                        },
                      );
                    },
                    child: Text(
                      'Пропустить',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF9605AC),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 70),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 233,
                      child: PageView.builder(
                        controller: controller,
                        clipBehavior: Clip.none,
                        itemCount: getOnboardingList().length,
                        onPageChanged: (index) {
                          currentIndex.value = index;
                        },
                        itemBuilder: (_, i) {
                          final item = getOnboardingList()[i];
                          return Image.asset(item.key);
                        },
                      ),
                    ),
                    Gap(5),
                    SmoothPageIndicator(
                      controller: controller,
                      count: getOnboardingList().length,
                      axisDirection: Axis.horizontal,
                      effect: SlideEffect(
                        spacing: 4,
                        radius: 100,
                        dotWidth: 10,
                        dotHeight: 10,
                        paintStyle: PaintingStyle.stroke,
                        strokeWidth: 1,
                        dotColor: Color(0xFF9605AC),
                        activeDotColor: Color(0xFF9605AC),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      getOnboardingList()[currentIndex.value].value,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(31),
                    ContinueElevatedButton(
                      () {
                        if (currentIndex.value != 2) {
                          controller.animateToPage(
                            controller.page!.toInt() + 1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        } else {
                          LocalStorage().firstRun = false;
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NavigationBarView()),
                            (_) {
                              return false;
                            },
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildSignButton(
    BuildContext context, {
    required String text,
    VoidCallback? onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        side: BorderSide(
          color: Colors.blue,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
