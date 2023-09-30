import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oprol_template/domain/entity/member.dart';

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
                      height: 200,
                      width: 200,
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
