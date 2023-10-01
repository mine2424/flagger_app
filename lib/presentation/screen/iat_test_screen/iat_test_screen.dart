import 'dart:math';

import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import 'package:oprol_template/gen/assets.gen.dart';
import 'package:oprol_template/presentation/screen/iat_test_screen/iat_test_result_screen.dart';

class IATTestScreen extends HookWidget {
  IATTestScreen({super.key});

  static const questions = [
    '一日の終わりには、自分の仕事に満足していることが多いですか？',
    '週末に仕事のことを考えることはよくありますか？',
    '仕事のストレスを感じることは日常的ですか？',
    // '仕事の量は適切だと感じますか？',
    // '仕事の締め切りに追われることが多いですか？',
    // '仕事中に適切に休息をとることができていますか？',
    // '上司や同僚とのコミュニケーションを、ストレスを感じることなくスムーズに取ることができていますか？',
    // '仕事のミスに対して、過度なプレッシャーを感じますか？',
    // '仕事に対する自信はありますか？',
    // '仕事の目標や期待値が明確ですか？',
    '',
  ];

  static const double _baseWidth = 320;
  static const double _baseHeight = 640;

  final stopWatch = Stopwatch()..start();

  @override
  Widget build(BuildContext context) {
    final elapsedMilliseconds = useState<double>(0);
    final currentPage = useState<int>(0);

    final evaluateIAPSum = useState<double>(0);

    final leftTextKeyList =
        List.generate(questions.length, (index) => GlobalKey());
    final rightTextKeyList =
        List.generate(questions.length, (index) => GlobalKey());

    final carouselController = CarouselController();

    useEffect(
      () {
        return stopWatch.reset;
      },
      const [],
    );

    void calculateIAP(
      TapUpDetails details,
      GlobalKey leftSideTextKey,
      GlobalKey rightSideTextKey,
    ) {
      // C: 秒数の計測
      stopWatch.stop();

      final elapsed = stopWatch.elapsed;
      // ignore: lines_longer_than_80_chars
      final elapsedByStop =
          double.parse('${elapsed.inSeconds}.${elapsed.inMilliseconds}');
      debugPrint('elapsedSeconds: ${elapsedMilliseconds.value}');

      // A: 回答の+,-の位置の評価（横軸のみ）
      final dx = details.localPosition.dx;
      final dy = details.localPosition.dy;

      final width = MediaQuery.sizeOf(context).width;

      final widthPosition = dx / width;
      debugPrint('widthPosition: $widthPosition');

      // B: tapの位置の評価
      final leftTextRenderBox =
          leftSideTextKey.currentContext!.findRenderObject()! as RenderBox;
      final rightTextRenderBox =
          rightSideTextKey.currentContext!.findRenderObject()! as RenderBox;

      // widthの半分より左側を選択した場合は左側のテキストの座標を取得
      // 右側を選択した場合は右側のテキストの座標を取得
      var textPosition = Offset.zero;
      if (widthPosition < 0.5) {
        debugPrint('左側を選択');
        textPosition = leftTextRenderBox.localToGlobal(Offset.zero);
      } else {
        debugPrint('右側を選択');
        textPosition = rightTextRenderBox.localToGlobal(Offset.zero);
      }

      // 基準化したタップの座標を計算
      final regulatedDx = (width * dx) / _baseWidth;
      final height = MediaQuery.sizeOf(context).height;
      final regulatedDy = (height * dy) / _baseHeight;

      final fx = textPosition.dx;
      final fy = textPosition.dy;

      final tapDistance =
          sqrt(pow(fx - regulatedDx, 2) + pow(fy - regulatedDy, 2));

      debugPrint('tap distance: $tapDistance');

      // evaluateIAPSumへ結果を保存&更新
      final elapsedDiff = elapsedMilliseconds.value - elapsedByStop;
      if (elapsedDiff > 8) {
        evaluateIAPSum.value += 1;
      } else if (elapsedDiff > 4) {
        evaluateIAPSum.value += 0.5;
      } else {
        evaluateIAPSum.value += 0.2;
      }

      // 経過秒数の更新
      elapsedMilliseconds.value = elapsedByStop;

      // +,-の位置の評価（横軸のみ）の更新
      // 0.5より左側を選択した場合は最小-10、右側を選択した場合は最大+10
      evaluateIAPSum
        ..value -= widthPosition
        // tapの位置の評価の更新
        ..value += tapDistance / 1000;

      // naxt page
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTapUp: (details) => calculateIAP(
            details,
            leftTextKeyList[currentPage.value],
            rightTextKeyList[currentPage.value],
          ),
          child: CarouselSlider(
            carouselController: carouselController,
            options: CarouselOptions(
              height: MediaQuery.sizeOf(context).height,
              viewportFraction: 1,
              autoPlay: true,
              enableInfiniteScroll: false,
              pauseAutoPlayInFiniteScroll: true,
              scrollPhysics: const NeverScrollableScrollPhysics(),
              autoPlayInterval: const Duration(seconds: 8, milliseconds: 100),
              onPageChanged: (index, reason) {
                currentPage.value = index;

                stopWatch.start();

                if (index == questions.length - 1) {
                  debugPrint('最後のページ');
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      fullscreenDialog: true,
                      builder: (context) {
                        return IATTestResultScreen(
                          score: evaluateIAPSum.value,
                        );
                      },
                    ),
                  );
                }
              },
            ),
            items: questions.map((value) {
              final i = questions.indexOf(value);

              return (i == questions.length - 1)
                  ? const SizedBox()
                  : Column(
                      children: [
                        const Gap(200),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            questions[i],
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Gap(60),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'そう思わない',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                                key: leftTextKeyList[i],
                              ),
                              Text(
                                'そう思う',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                                key: rightTextKeyList[i],
                              ),
                            ],
                          ),
                        ),
                        const Gap(60),
                        LottieGenImage(Assets.lottie.greentimer.path)
                            .lottie(width: 300),
                      ],
                    );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
