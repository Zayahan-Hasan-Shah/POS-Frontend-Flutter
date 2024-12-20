import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class YearlyChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400, // Chart height
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(
              show: false, // Hide grid lines
            ),
            titlesData: FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    const years = [
                      '2023',
                      '2022',
                      '2021',
                      '2020',
                      '2019',
                    ];
                    if (value.toInt() >= 0 && value.toInt() < years.length) {
                      return SideTitleWidget(
                        axisSide: meta.axisSide,
                        child: RotatedBox(
                          quarterTurns: -1,
                          child: Text(
                            years[value.toInt()],
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      );
                    }
                    return const SizedBox();
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: 2000, // Sales increment interval
                  getTitlesWidget: (value, meta) {
                    return Text(
                      '\$${value.toInt()}',
                      style: const TextStyle(fontSize: 14),
                    );
                  },
                ),
              ),
            ),
            borderData: FlBorderData(
              show: true,
              border: const Border(
                left: BorderSide(color: Colors.black, width: 1),
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),
            minX: 0,
            maxX: 4,
            minY: 0,
            maxY: 10000,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 7000), // 2023: $7000
                  FlSpot(1, 6000), // 2022: $6000
                  FlSpot(2, 5500), // 2021: $5500
                  FlSpot(3, 8000), // 2020: $8000
                  FlSpot(4, 7500), // 2019: $7500
                ],
                isCurved: true,
                gradient: const LinearGradient(
                  colors: [AppPallete.yearlyChartColor1, AppPallete.yearlyChartColor2],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                     AppPallete.yearlyChartColor1.withOpacity(0.3),
                      AppPallete.yearlyChartColor2.withOpacity(0.1),
                    ],
                  ),
                ),
                dotData: FlDotData(show: true),
                barWidth: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
