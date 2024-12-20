import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class MonthlyChart extends StatelessWidget {
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
              show: false,
              drawVerticalLine: true,
              horizontalInterval: 2000, // Interval for grid lines
              verticalInterval: 1,
              getDrawingHorizontalLine: (value) => FlLine(
                color: Colors.grey.withOpacity(0.5),
                strokeWidth: 1,
              ),
              getDrawingVerticalLine: (value) => FlLine(
                color: Colors.grey.withOpacity(0.5),
                strokeWidth: 1,
              ),
            ),
            titlesData: FlTitlesData(
              
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: 1, // Display every month
                  getTitlesWidget: (value, meta) {
                    const months = [
                      'Jan',
                      'Feb',
                      'Mar',
                      'Apr',
                      'May',
                      'Jun',
                      'Jul',
                      'Aug',
                      'Sep',
                      'Oct',
                      'Nov',
                      'Dec'
                    ];
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          months[value.toInt() % 12],
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    );
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                  interval: 2000, // Sales increment interval
                  getTitlesWidget: (value, meta) {
                    return RotatedBox(quarterTurns: -1,
                    child: Text('\$${value.toInt()}',style: TextStyle(fontSize: 14),));
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
            minX: 0, // Start at January (index 0)
            maxX: 11, // End at December (index 11)
            minY: 0, // Minimum sales
            maxY: 10000, // Maximum sales (adjust as needed)
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 4000), // January: $4000
                  FlSpot(1, 3000), // February: $3000
                  FlSpot(2, 5000), // March: $5000
                  FlSpot(3, 7000), // April: $7000
                  FlSpot(4, 8000), // May: $8000
                  FlSpot(5, 6000), // June: $6000
                  FlSpot(6, 4000), // July: $4000
                  FlSpot(7, 5000), // August: $5000
                  FlSpot(8, 7000), // September: $7000
                  FlSpot(9, 8000), // October: $8000
                  FlSpot(10, 9500), // November: $9500
                  FlSpot(11, 9000), // December: $9000
                ],
                isCurved: true,
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      AppPallete.monthlyChartColor1.withOpacity(0.1),
                      AppPallete.monthlyChartColor2.withOpacity(0.1),
                      Colors.purple.withOpacity(0.1),
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
