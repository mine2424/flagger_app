import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';

import 'package:oprol_template/gen/colors.gen.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({
    required this.improvementRate0,
    required this.imporvementRate1,
    required this.improvementRate2,
    super.key,
  });

  // ２ヶ月前までの改善率を受け取る

  final int improvementRate0;
  final int imporvementRate1;
  final int improvementRate2;

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
          color: const Color(0xffe3dfdc),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, right: 30),
          child: Stack(
            children: [
              LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 3),
                        const FlSpot(0.5, 3),
                        const FlSpot(1, 5),
                        const FlSpot(1.5, 1),
                        const FlSpot(2, 4),
                        const FlSpot(2.5, 7),
                        const FlSpot(3, 9),
                      ],
                      color: Colors.lightBlueAccent,
                      isCurved: true,
                      dotData: const FlDotData(
                        show: false, // 座標のドット表示の有無
                      ),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(),
                    rightTitles: const AxisTitles(),
                    bottomTitles: AxisTitles(
                      sideTitles: _bottomTitles,
                    ),
                  ),
                  //  X軸の設定
                  minX: 0,
                  maxX: 3,
                  // Y軸の設定
                  minY: 0,
                  maxY: 10,
                  // グラフの設定
                  borderData: FlBorderData(
                    border: const Border(
                      left: BorderSide(),
                      bottom: BorderSide(),
                    ),
                  ),
                ),
              ),
              Align(
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, bottom: 21),
                  child: BarChart(
                    BarChartData(
                      // グラフのx軸y軸のの表示数
                      minY: 0,
                      // タイトル
                      titlesData: const FlTitlesData(
                        show: false,
                      ),
                      // 背景のグリッド線の設定
                      gridData: const FlGridData(
                        show: false, // 背景のグリッド線の有無
                      ),
                      // 外枠表の線
                      borderData: FlBorderData(
                        border: const Border(
                          left: BorderSide(),
                          bottom: BorderSide(),
                        ),
                      ),
                      //　赤色のグラフ
                      barTouchData: BarTouchData(
                        enabled: false,
                      ),

                      // データ追加
                      barGroups: [
                        BarChartGroupData(
                          x: 1,
                          barRods: [
                            BarChartRodData(
                              toY: 8,
                              width: 10,
                              color: AppColor.accentColor,
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(
                              toY: 3,
                              width: 10,
                              color: Color(AppColor.accentColor.value),
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(
                              toY: 5,
                              width: 10,
                              color: AppColor.accentColor,
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 4,
                          barRods: [
                            BarChartRodData(
                              toY: 8,
                              width: 10,
                              color: AppColor.accentColor,
                            ),
                          ],
                        ),
                        BarChartGroupData(
                          x: 5,
                          barRods: [
                            BarChartRodData(
                              toY: 7,
                              width: 10,
                              color: AppColor.accentColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SideTitles get _bottomTitles => SideTitles(
      showTitles: true,
      interval: 1,
      getTitlesWidget: (value, meta) {
        var text = '';
        switch (value.toInt()) {
          case 1:
            text = '先々月';
          case 2:
            text = '先月';
          case 3:
            text = '今月';
        }

        return Text(text);
      },
    );
