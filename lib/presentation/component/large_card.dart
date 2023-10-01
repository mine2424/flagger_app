import 'package:flutter/material.dart';
import 'package:oprol_template/gen/colors.gen.dart';

class LargeCard extends StatelessWidget {
  const LargeCard({required this.title, super.key});

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
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColor.accentColor,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 32),
            ),
            const Text(
              '今回の提出期限まであと',
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '回答する',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
