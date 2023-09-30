import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class IATTestScreen extends HookWidget {
  const IATTestScreen({super.key});

  static const questions = [
    '一日の終わりには、自分の仕事に満足していることが多いですか？',
    '週末に仕事のことを考えることはよくありますか？',
    '仕事のストレスを感じることは日常的ですか？',
    '仕事の量は適切だと感じますか？',
    '仕事の締め切りに追われることが多いですか？',
    '仕事中に適切に休息をとることができていますか？',
    '上司や同僚とのコミュニケーションを、ストレスを感じることなくスムーズに取ることができていますか？',
    '仕事のミスに対して、過度なプレッシャーを感じますか？',
    '仕事に対する自信はありますか？',
    '仕事の目標や期待値が明確ですか？',
    '仕事の成果を適切に評価されていると感じますか？',
    'ITエンジニアとしてのスキルアップの機会は十分ですか？',
    '仕事における新しい技術やツールを学ぶ機会は十分にあると感じますか？',
    '仕事以外での趣味やリラックスする時間は十分にありますか？',
    '会社のカルチャーや価値観に合っていると感じますか？',
    '職場では、あなたの意見や考えが尊重されていますか？',
    '職場では、あなたが何か新しいことを提案することが歓迎されていると感じますか？',
  ];

  static const double _baseWidth = 320;
  static const double _baseHeight = 640;

  @override
  Widget build(BuildContext context) {
    final leftSideTextKey = GlobalKey();
    final rightSideTextKey = GlobalKey();

    final stopWatch = Stopwatch();

    final elapsedSeconds = useState<double>(0);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    useEffect(
      () {
        stopWatch.start();
        return stopWatch.reset;
      },
      const [],
    );

    void evaluateOneIATQuestion(TapUpDetails details) {
      // C: 秒数の計測
      stopWatch.stop();

      final elapsed = stopWatch.elapsed;
      elapsedSeconds.value = elapsed.inSeconds.toDouble();
      debugPrint('elapsedSeconds: ${elapsedSeconds.value}');

      // A: 回答の+,-の位置の評価（横軸のみ）
      final dx = details.localPosition.dx;
      final dy = details.localPosition.dy;

      final width = MediaQuery.sizeOf(context).width;

      final widthPosition = dx / width;
      debugPrint('widthPosition: $widthPosition');

      // B: tapの位置の評価

      final leftTextRenderBox = leftSideTextKey.currentContext!.findRenderObject()! as RenderBox;
      final rightTextRenderBox = rightSideTextKey.currentContext!.findRenderObject()! as RenderBox;

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

      final tapDistance = sqrt(pow(fx - regulatedDx, 2) + pow(fy - regulatedDy, 2));

      debugPrint('tap distance: $tapDistance');

      // 次の問題へアニメーションで遷移
      animationController.forward(from: 0);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('IATテスト')),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: AnimatedBuilder(
          animation: animationController,
          builder: (_, __) {
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTapUp: evaluateOneIATQuestion,
              child: Column(
                children: [
                  const Gap(40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      questions[0],
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
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                          key: leftSideTextKey,
                        ),
                        Text(
                          'そう思う',
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                          key: rightSideTextKey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
