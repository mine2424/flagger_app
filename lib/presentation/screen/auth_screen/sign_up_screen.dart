import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oprol_template/presentation/screen/auth_screen/auth_screen_component/text_filed.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(2),
              const Text(
                '新規登録',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(2),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: TextFieldComponent(
                  controller: emailController,
                  hintText: 'emailを入力してください',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: TextFieldComponent(
                  controller: passwordController,
                  hintText: 'passwordを入力してください',
                ),
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text('8文字以上12文字以下の半角英数字')),
              const SizedBox(height: 30,),
              SizedBox(
                height: 64,
                width: 320,
                child: ElevatedButton(
                  onPressed: () async {
                    print(emailController);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF1a0b08)),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFFF5E0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'はじめる',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
