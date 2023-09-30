import 'package:flutter/material.dart';

class IATTestResultScreen extends StatelessWidget {
  const IATTestResultScreen({super.key});

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
            const Text('0.5'),
            const SizedBox(height: 20),
            const Text('です'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
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
