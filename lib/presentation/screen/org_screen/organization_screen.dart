import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

import 'package:oprol_template/presentation/component/chart_card.dart';

class Organization extends StatelessWidget {
  const Organization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 100)),
            const Text(
              'Oprol-compnay',
              style: TextStyle(
                fontSize: 36,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40),
            ),
            const ChartCard(
              improvementRate0: 1,
              imporvementRate1: 2,
              improvementRate2: 5,
            ),
            const Gap(10),
            Expanded(
              child: SizedBox(
                height: 300,
                width: 300,
                child: Center(
                  child: ListView(
                    children: [
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 210, 229, 208),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      Container(
                        height: 32,
                        color: const Color.fromARGB(255, 220, 220, 220),
                        child: const Center(
                          child: Text(
                            'test@test',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
