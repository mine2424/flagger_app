import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:oprol_template/presentation/component/chart_card.dart';

class MyPageAnalysis extends StatelessWidget {
  const MyPageAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Gap(100),
            Text(
              'test@test',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Gap(40),
            ChartCard(
              improvementRate0: 2,
              imporvementRate1: 5,
              improvementRate2: 1,
            ),
            Gap(40),
            Text(
              'something,something,somethin,something,something,something',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
