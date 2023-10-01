import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flagger_app/presentation/component/line_chat.dart';

class TeamAnalysis extends HookConsumerWidget {
  const TeamAnalysis({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16), // 角を丸める
      ),
      margin: const EdgeInsets.all(16),
      child: const Expanded(child: LineChartComponent()),
    );
  }
}
