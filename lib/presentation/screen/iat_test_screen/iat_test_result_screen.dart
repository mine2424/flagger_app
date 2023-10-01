import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/gen/assets.gen.dart';
import 'package:oprol_template/gen/colors.gen.dart';
import 'package:oprol_template/use_case/iat_use_case.dart';

class IATTestResultScreen extends HookConsumerWidget {
  const IATTestResultScreen({required this.score, super.key});

  final double score;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future<void> createAnswer() async {
      final useCase = ref.watch(iatUseCaseProvider);
      await useCase.saveIATResult(score);
    }

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) => createAnswer());
        return () {};
      },
      const [],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('IATテスト結果'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'あなたのスコアは',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const Gap(40),
                Text(
                  score.toStringAsFixed(2),
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColor.accentColor,
                        fontSize: 55,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ],
            ),
            const Gap(30),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                // ignore: lines_longer_than_80_chars
                '素晴らしいです！自分のを安定させるためのステップを踏んでいくことが大切です。また、ストレスフルな状況に遭遇した場合でも、感情をコントロールし、ポジティブな考え方を心がけましょう。',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const Gap(30),
            LottieGenImage(Assets.lottie.celebrate.path).lottie(width: 240),
            const Gap(60),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Text(
                  'ホームに戻る',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
