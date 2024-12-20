import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyChart extends StatelessWidget {
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
                    // Generate the last 14 days dynamically
                    final DateTime today = DateTime.now();
                    final DateTime date = today.subtract(Duration(days: 13 - value.toInt()));
                    final String label = '${date.day} ${_getMonthName(date.month)}';
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Text(
                          label,
                          style: const TextStyle(fontSize: 10),
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
                  interval: 1000, // Sales increment interval
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
            maxX: 13,
            minY: 0,
            maxY: 10000,
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 4000), // 14 days ago: $4000
                  FlSpot(1, 4200), // 13 days ago: $4200
                  FlSpot(2, 3800), // 12 days ago: $3800
                  FlSpot(3, 5000), // 11 days ago: $5000
                  FlSpot(4, 5200), // 10 days ago: $5200
                  FlSpot(5, 4900), // 9 days ago: $4900
                  FlSpot(6, 5100), // 8 days ago: $5100
                  FlSpot(7, 5500), // 7 days ago: $5500
                  FlSpot(8, 6000), // 6 days ago: $6000
                  FlSpot(9, 6200), // 5 days ago: $6200
                  FlSpot(10, 6500), // 4 days ago: $6500
                  FlSpot(11, 6800), // 3 days ago: $6800
                  FlSpot(12, 7000), // 2 days ago: $7000
                  FlSpot(13, 7200), // 1 day ago: $7200
                ],
                isCurved: true,
                gradient: const LinearGradient(
                  colors: [Colors.green, Colors.teal],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                belowBarData: BarAreaData(
                  show: true,
                  gradient: LinearGradient(
                    colors: [
                      Colors.green.withOpacity(0.3),
                      Colors.teal.withOpacity(0.1),
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

  // Helper function to convert month number to name
  String _getMonthName(int month) {
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
      'Dec',
    ];
    return months[month - 1];
  }
}
