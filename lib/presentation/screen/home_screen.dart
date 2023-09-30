import 'package:flutter/material.dart';

import 'package:oprol_template/presentation/component/chart_card.dart';
import 'package:oprol_template/presentation/component/large_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: GoodAppber(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(16),
              child: LargeCard(title: '09:23'),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(16),
              child: ChartCard(
                improvementRate0: 20,
                imporvementRate1: 40,
                improvementRate2: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
