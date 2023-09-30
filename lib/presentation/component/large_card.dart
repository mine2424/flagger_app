import 'package:flutter/material.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        width: 500,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: const Color(0xffe3dfdc),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12),
            ),
            const Text(
              "今回の提出期限まであと",
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
