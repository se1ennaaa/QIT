import 'dart:async';
import 'package:chelnok_mob/helpers/slide_right.dart';
import 'package:chelnok_mob/providers/registration_providers.dart';
import 'package:chelnok_mob/ui/diologs/snackbars.dart';
import 'package:chelnok_mob/ui/screens/auth/register/name_and_surname_screen.dart';
import 'package:chelnok_mob/ui/widgets/safe_area_wrapper.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pinput/pinput.dart';

import '../../../widgets/continue_elevated_button.dart';

class EmailVerificationScreen extends HookConsumerWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registrationState = ref.watch(registrationProvider);

    final timeMinutes = useState(1);
    final timeSeconds = useState(00);
    final timer = useState<Timer?>(null);
    final codeController = useTextEditingController();

    useEffect(() {
      if (timer.value?.isActive == true) return;
      timer.value = Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          if (timeSeconds.value > 0) {
            timeSeconds.value--;
          } else {
            if (timeMinutes.value == 0) {
              timer.cancel();
              return;
            } else {
              timeSeconds.value = 59;
            }

            timeMinutes.value--;
          }
        },
      );
      return;
    }, [timeMinutes.value, timeSeconds.value]);

    ref.listen(registrationProvider, (prevState, nextState) {
      if (nextState.error != null) {
        showSnackbar(
          context: context,
          message: nextState.error.toString(),
        );
      } else if (nextState.status.isCodeVerify) {
        Navigator.push(
          context,
          SlideRoute(
            screen: NameAndSurnameScreen(),
          ),
        );
      }
    });

    return SafeAreaWrapper(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(96),
              Text(
                'Введите код',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gap(12),
              Text(
                textAlign: TextAlign.center,
                'Мы отправили сообщение с кодом на почту ',
                style: TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 17,
                ),
              ),
              Gap(48),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Pinput(
                    length: 4,
                    autofocus: true,
                    controller: codeController,
                    onChanged: (value) {
                      if (value.length == 6) {}
                    },
                    // listenForMultipleSmsOnAndroid: true,
                    keyboardType: TextInputType.phone,
                    hapticFeedbackType: HapticFeedbackType.lightImpact,

                    // onCompleted: (pin) => onCompleted?.call(pin),
                    // onChanged: (value) => onCompleted?.call(value),
                    separatorBuilder: (index) => const SizedBox(width: 10),
                    // onSubmitted: (value) => onSubmitted?.call(value),
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    // androidSmsAutofillMethod:
                    //     AndroidSmsAutofillMethod.smsUserConsentApi,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    cursor: Container(
                      width: 1.5,
                      height: 22,
                      color: Theme.of(context).primaryColor,
                    ),

                    submittedPinTheme: PinTheme(
                      height: 100,
                      width: 70,
                      textStyle: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFCF95D8),
                          width: 1.5,
                        ),
                      ),
                    ),

                    defaultPinTheme: PinTheme(
                      height: 100,
                      width: 70,
                      textStyle: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xFFCF95D8),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(20),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    if (timeMinutes.value == 0 && timeSeconds.value == 0) {
                      timeMinutes.value = 2;
                      timeSeconds.value = 00;
                    } else {}
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      right: 10,
                    ),
                    child: Text(
                      timeMinutes.value == 0 && timeSeconds.value == 0
                          ? 'Отправить код ещё раз'
                          : '${'Отправить код ещё раз'}'
                              ' ${timeMinutes.value < 10 ? '0' : ''}${timeMinutes.value.toString()}:'
                              '${timeSeconds.value < 10 ? '0' : ''}${timeSeconds.value.toString()}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: timeMinutes.value == 0 && timeSeconds.value == 0
                            ? Color(0xFF9605AC)
                            : Color(0xFFCF95D8),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              ContinueElevatedButton(
                () {
                  if (codeController.text.length == 4) {
                    ref
                        .read(registrationProvider.notifier)
                        .codeVerify(codeController.text);
                  } else {
                    showSnackbar(context: context, message: 'Введите код');
                  }
                },
                isLoading: registrationState.status.isLoading,
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
