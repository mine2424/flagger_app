import 'dart:math';

import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flagger_app/domain/entity/member.dart';
import 'package:flagger_app/presentation/component/line_chat.dart';

class OrganizationMemberScreen extends HookConsumerWidget {
  const OrganizationMemberScreen(this.allMemberState, {super.key});

  final List<MemberResponse> allMemberState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int randomIntWithRange(int min, int max) {
      final value = Random().nextInt(max - min);
      return value + min;
    }

    final averageScoreList = List.generate(
      6,
      (index) => (index.toDouble(), randomIntWithRange(-2, 10).toDouble()),
    );

    double calculateLSM(List<(double, double)> coordinates) {
      final len = coordinates.length;
      final sigX = coordinates.fold<double>(0, (acc, next) => acc + next.$1);
      final sigY = coordinates.fold<double>(0, (acc, next) => acc + next.$2);
      final sigXX = coordinates.fold<double>(0, (acc, c) => acc + c.$1 * c.$1);
      final sigXY = coordinates.fold<double>(0, (acc, c) => acc + c.$1 * c.$2);

      // a(傾き)を求める
      final a = (len * sigXY - sigX * sigY) / (len * sigXX - pow(sigX, 2));
      return a;
    }

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: allMemberState.map((member) {
            return ExpansionTile(
              title: Text(member.email),
              children: [
                Column(
                  children: [
                    Container(
                      color: Colors.grey,
                      height: 240,
                      width: 240,
                      child: const LineChartComponent(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: calculateLSM(averageScoreList) > 0.2
                          ? const Text('チームが悪い状況になっています。改善が必要です。')
                          : const Text(
                              '前回に比べてスコアが改善され、メンタルの安定を感じます。この調子でいきましょう!',
                            ),
                    ),
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
