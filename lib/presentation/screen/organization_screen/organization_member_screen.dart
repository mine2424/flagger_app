import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/domain/entity/member.dart';
import 'package:oprol_template/presentation/component/line_chat.dart';

class OrganizationMemberScreen extends HookConsumerWidget {
  const OrganizationMemberScreen(this.allMemberState, {super.key});

  final List<MemberResponse> allMemberState;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
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
                      height: 250,
                      width: 250,
                      child: LineChartComponent(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('前回に比べてスコアが上がり、メンタルの安定を感じます。この調子でいきましょう!'),
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
