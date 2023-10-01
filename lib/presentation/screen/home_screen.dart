import 'package:flutter/material.dart';

import 'package:flagger_app/presentation/component/chart_card.dart';
import 'package:flagger_app/presentation/component/large_card.dart';
import 'package:flagger_app/presentation/screen/iat_test_screen/iat_test_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(16),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (context) => IATTestScreen(),
                    ),
                  );
                },
                child: const LargeCard(title: '09:23'),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
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
