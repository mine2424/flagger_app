import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/presentation/component/custom_text_filed.dart';
import 'package:oprol_template/use_case/auth_use_case.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //controller系とかuseStateに入れた方がいい?
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5E0),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Gap効いてない気がする...
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
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    controller: emailController,
                    hintText: 'emailを入力してください',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 28),
                  child: CustomTextField(
                    obscureText: true,
                    controller: passwordController,
                    hintText: 'passwordを入力してください',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text('8文字以上12文字以下の半角英数字'),
                ),
                // const SizedBox(height: 30),
                const Gap(20),
                SizedBox(
                  height: 64,
                  width: 320,
                  //全体のコンポーネントにボタン作ってそれ使う
                  child: ElevatedButton(
                    onPressed: () async {
                      await AuthUseCase.signUp(
                        ref: ref,
                        email: emailController.text,
                        password: passwordController.text,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF1a0b08),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFFF5E0),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
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
        ],
      ),
    );
  }
}
