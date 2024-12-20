import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:pos_flutter/core/theme/app_pallete.dart';

class LastDayChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400, // Chart height
        width: double.infinity * 20,
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            groupsSpace: 0,
            alignment: BarChartAlignment.spaceBetween,
            maxY: 100, // Maximum sales (adjust as needed)
            barGroups: [
              BarChartGroupData(x: 7, barRods: [
                BarChartRodData(
                    toY: 10, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 7 AM
              BarChartGroupData(x: 8, barRods: [
                BarChartRodData(
                    toY: 20, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 8 AM
              BarChartGroupData(x: 9, barRods: [
                BarChartRodData(
                    toY: 30, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 9 AM
              BarChartGroupData(x: 10, barRods: [
                BarChartRodData(
                    toY: 40, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 10 AM
              BarChartGroupData(x: 11, barRods: [
                BarChartRodData(
                    toY: 50, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 11 AM
              BarChartGroupData(x: 12, barRods: [
                BarChartRodData(
                    toY: 60, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 12 PM
              BarChartGroupData(x: 13, barRods: [
                BarChartRodData(
                    toY: 70, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 1 PM
              BarChartGroupData(x: 14, barRods: [
                BarChartRodData(
                    toY: 55, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 2 PM
              BarChartGroupData(x: 15, barRods: [
                BarChartRodData(
                    toY: 45, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 3 PM
              BarChartGroupData(x: 16, barRods: [
                BarChartRodData(
                    toY: 35, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 4 PM
              BarChartGroupData(x: 17, barRods: [
                BarChartRodData(
                    toY: 25, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 5 PM
              BarChartGroupData(x: 18, barRods: [
                BarChartRodData(
                    toY: 15, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 6 PM
              BarChartGroupData(x: 19, barRods: [
                BarChartRodData(
                    toY: 30, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 7 PM
              BarChartGroupData(x: 20, barRods: [
                BarChartRodData(
                    toY: 50, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 8 PM
              BarChartGroupData(x: 21, barRods: [
                BarChartRodData(
                    toY: 60, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 9 PM
              BarChartGroupData(x: 22, barRods: [
                BarChartRodData(
                    toY: 45, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 10 PM
              BarChartGroupData(x: 23, barRods: [
                BarChartRodData(
                    toY: 20, color: AppPallete.lastdayBarColor, width: 15, borderRadius: BorderRadius.zero)
              ]), // 11 PM
            ],
            titlesData: FlTitlesData(
              topTitles: const AxisTitles(
                // Disable top titles
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                // Disable right titles
                sideTitles: SideTitles(showTitles: false),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  interval: 10,
                   // Interval for Y-axis labels
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                    ); // Sales labels
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 50,
                  getTitlesWidget: (value, meta) {
                    // Map x values to time slots
                    switch (value.toInt()) {
                      case 7:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("7 AM", style: TextStyle(fontSize: 14)));
                      case 8:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("8 AM", style: TextStyle(fontSize: 14)));
                      case 9:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("9 AM", style: TextStyle(fontSize: 14)));
                      case 10:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("10 AM", style: TextStyle(fontSize: 14)));
                      case 11:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("11 AM", style: TextStyle(fontSize: 14)));
                      case 12:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("12 PM", style: TextStyle(fontSize: 14)));
                      case 13:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("1 PM", style: TextStyle(fontSize: 14)));
                      case 14:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("2 PM", style: TextStyle(fontSize: 14)));
                      case 15:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("3 PM", style: TextStyle(fontSize: 14)));
                      case 16:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("4 PM", style: TextStyle(fontSize: 14)));
                      case 17:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("5 PM", style: TextStyle(fontSize: 14)));
                      case 18:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("6 PM", style: TextStyle(fontSize: 14)));
                      case 19:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("7 PM", style: TextStyle(fontSize: 14)));
                      case 20:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("8 PM", style: TextStyle(fontSize: 14)));
                      case 21:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("9 PM", style: TextStyle(fontSize: 14)));
                      case 22:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("10 PM", style: TextStyle(fontSize: 14)));
                      case 23:
                        return const RotatedBox(
                            quarterTurns: -1,
                            child:
                                Text("11 PM", style: TextStyle(fontSize: 14)));
                      default:
                        return const Text("");
                    }
                  },
                ),
              ),
            ),
            gridData: const FlGridData(show: false),
            borderData: FlBorderData(
              show: true,
              border: const Border(
                left: BorderSide(color: Colors.black, width: 1),
                bottom: BorderSide(color: Colors.black, width: 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
