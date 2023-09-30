import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:oprol_template/gen/colors.gen.dart';

class ChartCard extends StatelessWidget {
  const ChartCard(
      {super.key,
      required this.ImprovementRate0,
      required this.ImporvementRate1,
      required this.ImprovementRate2});
  // ２ヶ月前までの改善率を受け取る

  final int ImprovementRate0;
  final int ImporvementRate1;
  final int ImprovementRate2;

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
                      spots: const [
                        FlSpot(0.0, 3),
                        FlSpot(0.5, 3),
                        FlSpot(1.0, 5),
                        FlSpot(1.5, 1),
                        FlSpot(2.0, 4),
                        FlSpot(2.5, 7),
                        FlSpot(3.0, 9),
                      ],
                      color: Colors.lightBlueAccent,
                      isCurved: true,
                      dotData: FlDotData(
                        show: false, // 座標のドット表示の有無
                      ),
                    ),
                  ],
                  titlesData: FlTitlesData(
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
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
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide(width: 1),
                      bottom: BorderSide(width: 1),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 45, bottom: 21),
                  child: BarChart(
                    BarChartData(
                      // グラフのx軸y軸のの表示数
                      minY: 0.0,
                      // タイトル
                      titlesData: const FlTitlesData(
                        show: false,
                      ),
                      // 背景のグリッド線の設定
                      gridData: FlGridData(
                        show: false, // 背景のグリッド線の有無
                      ),
                      // 外枠表の線
                      borderData: FlBorderData(
                        border: const Border(
                          top: BorderSide.none,
                          right: BorderSide.none,
                          left: BorderSide(width: 1),
                          bottom: BorderSide(width: 1),
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
                                toY: 8, width: 10, color: AppColor.accentColor),
                          ],
                        ),
                        BarChartGroupData(
                          x: 2,
                          barRods: [
                            BarChartRodData(
                                toY: 3,
                                width: 10,
                                color: Color(AppColor.accentColor.value)),
                          ],
                        ),
                        BarChartGroupData(
                          x: 3,
                          barRods: [
                            BarChartRodData(
                                toY: 5, width: 10, color: AppColor.accentColor),
                          ],
                        ),
                        BarChartGroupData(
                          x: 4,
                          barRods: [
                            BarChartRodData(
                                toY: 8, width: 10, color: AppColor.accentColor),
                          ],
                        ),
                        BarChartGroupData(
                          x: 5,
                          barRods: [
                            BarChartRodData(
                                toY: 7, width: 10, color: AppColor.accentColor),
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
        String text = '';
        switch (value.toInt()) {
          case 1:
            text = '先々月';
            break;
          case 2:
            text = '先月';
            break;
          case 3:
            text = '今月';
            break;
        }

        return Text(text);
      },
    );
