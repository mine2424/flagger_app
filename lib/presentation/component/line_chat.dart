import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LineChartComponent extends HookConsumerWidget {
  const LineChartComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final random = math.Random();

    return LineChart(
      LineChartData(
        backgroundColor: Colors.white,
        // タッチ操作時の設定
        lineTouchData: const LineTouchData(
          // ツールチップの設定
          touchTooltipData: LineTouchTooltipData(
            tooltipBgColor: Colors.white, // 背景の色
            tooltipRoundedRadius: 2, // 角丸
          ),
        ),

        // 背景のグリッド線の設定
        gridData: FlGridData(
          horizontalInterval: 1, // 背景グリッドの横線間隔
          verticalInterval: 1, // 背景グリッドの縦線間隔
          // 背景グリッドの横線設定
          getDrawingHorizontalLine: (value) {
            return const FlLine(
              color: Color(0xff37434d),
              strokeWidth: 1, // 線の太さ
            );
          },
          // 背景グリッドの縦線設定
          getDrawingVerticalLine: (value) {
            return const FlLine(
              color: Color(0xff37434d),
              strokeWidth: 1, // 線の太さ
            );
          },
        ),

        // グラフのタイトル設定
        titlesData: const FlTitlesData(
          rightTitles: AxisTitles(),
          topTitles: AxisTitles(),
          // 下側のタイトル設定
          bottomTitles: AxisTitles(
            // タイトル名
            axisNameWidget: Text(
              '[日じ]',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            axisNameSize: 22, //タイトルの表示エリアの幅
            // サイドタイトルの設定
            sideTitles: SideTitles(
              showTitles: true, // サイドタイトルの有無
              interval: 1, // サイドタイトルの表示間隔
              // reservedSize: 40.0, // サイドタイトルの表示エリアの幅
              // getTitlesWidget: SideTitleWidget(
              //   axisSide: meta.axisSide,
              //   child: Text('ああ'),
              // ), // サイドタイトルの表示内容
            ),
          ),
          leftTitles: AxisTitles(
            axisNameWidget: Text(
              '【平均スコア】',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            axisNameSize: 22, //タイトルの表示エリアの幅
            sideTitles: SideTitles(
              showTitles: true, // サイドタイトルの表示・非表示
              interval: 1, // サイドタイトルの表示間隔
              // reservedSize: 42.0, // サイドタイトルの表示エリアの幅
              // getTitlesWidget: leftTitleWidgets,
            ),
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
        minX: 0,
        maxX: 6,
        minY: -1,
        maxY: 6,

        // チャート線の設定
        lineBarsData: [
          LineChartBarData(
            // 表示する座標のリスト
            spots: [
              FlSpot(0, random.nextInt(6).toDouble()),
              FlSpot(1, random.nextInt(6).toDouble()),
              FlSpot(2, random.nextInt(6).toDouble()),
              FlSpot(3, random.nextInt(6).toDouble()),
              FlSpot(4, random.nextInt(6).toDouble()),
              FlSpot(5, random.nextInt(6).toDouble()),
              FlSpot(6, random.nextInt(6).toDouble()),
            ],

            /// グラデーションは使用しない
            // gradient: LinearGradient(
            //   colors: gradientColors,
            // ),
            barWidth: 1, // チャート線幅
            dotData: FlDotData(
              // ドットの詳細設定
              getDotPainter: (spot, percent, barData, index) =>
                  // ドットの詳細設定
                  FlDotCirclePainter(
                radius: 2,
                color: Colors.blue,
                strokeWidth: 2,
                strokeColor: Colors.blue,
              ),
            ),
            // チャート線下部に色を付ける場合の設定
            belowBarData: BarAreaData(),
          ),
        ],
      ),
    );
  }
}
