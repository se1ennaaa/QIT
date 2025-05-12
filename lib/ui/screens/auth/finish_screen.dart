import 'package:chelnok_mob/ui/navigation_bar_view.dart';
import 'package:chelnok_mob/ui/screens/home/home_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FinishScreen extends HookConsumerWidget {
  const FinishScreen({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xFFF6EFF7),
                  ),
                  padding: EdgeInsets.all(16),
                  child: SvgPicture.asset(
                    'assets/svg/finish_flag.svg',
                    height: 56,
                    width: 56,
                  ),
                ),
              ),
              Gap(24),
              Text(
                title ?? 'Добро\n пожаловать!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9605AC),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavigationBarView(),
                        ),
                        (_) {
                          return false;
                        },
                      );
                    },
                    child: Text('На главную'),
                  ),
                ),
              ),
              Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
