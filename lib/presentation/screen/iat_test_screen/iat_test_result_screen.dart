import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class IATTestResultScreen extends StatelessWidget {
  const IATTestResultScreen({required this.score, super.key});

  final double score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IATテスト結果'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('IATテスト結果'),
            const SizedBox(height: 20),
            const Text('あなたのIATスコアは'),
            const SizedBox(height: 20),
            Text(score.toString()),
            const SizedBox(height: 20),
            const Text('です'),
            Lottie.asset(
              'assets/lottie/celebrate.json',
              height: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
