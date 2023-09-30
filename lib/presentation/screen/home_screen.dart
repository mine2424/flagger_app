import 'package:flutter/material.dart';
import 'package:oprol_template/presentation/component/chart_card.dart';
import 'package:oprol_template/presentation/component/large_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: GoodAppber(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            SizedBox(height: 40),
            LargeCard(title: '09:23'),
            SizedBox(height: 40),
            ChartCard(
              ImprovementRate0: 20,
              ImporvementRate1: 40,
              ImprovementRate2: 60,
            ),
          ],
        ),
      ),
    );
  }
}
