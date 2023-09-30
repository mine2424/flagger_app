import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LineChartComponent extends HookConsumerWidget {
  const LineChartComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LineChart(
        LineChartData(
          // タッチ操作時の設定
          lineTouchData: const LineTouchData(
            handleBuiltInTouches: true, // タッチ時のアクションの有無
            getTouchedSpotIndicator: defaultTouchedIndicators, // インジケーターの設定
            // ツールチップの設定
            touchTooltipData: LineTouchTooltipData(
              getTooltipItems: defaultLineTooltipItem, // 表示文字設定
              tooltipBgColor: Colors.white, // 背景の色
              tooltipRoundedRadius: 2.0, // 角丸
            ),
          ),

          // 背景のグリッド線の設定
          gridData: FlGridData(
            show: true, // 背景のグリッド線の有無
            drawVerticalLine: true, // 水平方向のグリッド線の有無
            horizontalInterval: 1.0, // 背景グリッドの横線間隔
            verticalInterval: 1.0, // 背景グリッドの縦線間隔
            // 背景グリッドの横線設定
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1.0, // 線の太さ
              );
            },
            // 背景グリッドの縦線設定
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1.0, // 線の太さ
              );
            },
          ),

          // グラフのタイトル設定
          titlesData: const FlTitlesData(
            show: true, // タイトルの有無
            rightTitles: AxisTitles(),
            topTitles: AxisTitles(),
            // 下側のタイトル設定
            bottomTitles: AxisTitles(
              // タイトル名
              axisNameWidget: Text(
                "[日じ]",
                style: TextStyle(
                  color: Color(0xff68737d),
                ),
              ),
              axisNameSize: 22.0, //タイトルの表示エリアの幅
              // サイドタイトルの設定
              sideTitles: SideTitles(
                showTitles: true, // サイドタイトルの有無
                interval: 1.0, // サイドタイトルの表示間隔
                reservedSize: 40.0, // サイドタイトルの表示エリアの幅
                // getTitlesWidget: SideTitleWidget(
                //   axisSide: meta.axisSide,
                //   child: Text('ああ'),
                // ), // サイドタイトルの表示内容
              ),
            ),
            leftTitles: AxisTitles(
              axisNameWidget: Text(
                "【平均スコア】",
                style: TextStyle(
                  color: Color(0xff68737d),
                ),
              ),
              axisNameSize: 28.0, //タイトルの表示エリアの幅
              // sideTitles: SideTitles(
              //   showTitles: true, // サイドタイトルの表示・非表示
              //   interval: 1.0, // サイドタイトルの表示間隔
              //   reservedSize: 42.0, // サイドタイトルの表示エリアの幅
              //   getTitlesWidget: leftTitleWidgets,
              // ),
            ),
          ),

          // グラフの外枠線
          borderData: FlBorderData(
            show: true, // 外枠線の有無
            border: Border.all(
              color: const Color(0xff37434d),
            ),
          ),

          // グラフのx軸y軸のの表示数(最大値)
          minX: 0.0,
          maxX: 6.0,
          minY: 0.0,
          maxY: 6.0,

          // チャート線の設定
          lineBarsData: [
            LineChartBarData(
              // 表示する座標のリスト
              spots: const [
                FlSpot(0.0, 3.0),
                FlSpot(1.0, 2.0),
                FlSpot(2.0, 5.0),
                FlSpot(3.0, 3.0),
                FlSpot(4.0, 4.0),
                FlSpot(5.0, 3.0),
                FlSpot(6.0, 4.0),
              ],
              isCurved: false, // チャート線を曲線にするか折れ線にするか
              /// グラデーションは使用しない
              // gradient: LinearGradient(
              //   colors: gradientColors,
              // ),
              barWidth: 1.0, // チャート線幅
              isStrokeCapRound: false, // チャート線の開始と終了がQubicかRoundか（？）
              dotData: FlDotData(
                show: true, // 座標にドット表示の有無
                // ドットの詳細設定
                getDotPainter: (spot, percent, barData, index) =>
                // ドットの詳細設定
                FlDotCirclePainter(
                  radius: 2.0,
                  color: Colors.blue,
                  strokeWidth: 2.0,
                  strokeColor: Colors.blue,
                ),
              ),
              // チャート線下部に色を付ける場合の設定
              belowBarData: BarAreaData(
                show: false, // チャート線下部の表示の有無

              ),
            ),
          ],
        ),
    );
  }
}