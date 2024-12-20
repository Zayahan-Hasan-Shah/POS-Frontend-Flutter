import 'package:flutter/material.dart';
import 'package:pos_flutter/common/widgets/sidebar_screen.dart';
import 'package:pos_flutter/presentation/report/widgets/monthlyChart.dart';
import 'package:pos_flutter/presentation/report/widgets/lastDayChart.dart';
import 'package:pos_flutter/presentation/report/widgets/lastDayText.dart';
import 'package:pos_flutter/presentation/report/widgets/monthlyText.dart';
import 'package:pos_flutter/presentation/report/widgets/weeklyChart.dart';
import 'package:pos_flutter/presentation/report/widgets/weeklyText.dart';
import 'package:pos_flutter/presentation/report/widgets/yearlyChart.dart';
import 'package:pos_flutter/presentation/report/widgets/yearlyText.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SidebarScreen(),
      appBar: AppBar(
        title: const Text('Report'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LastDayText(),
              const SizedBox(
                height: 10,
              ),
              LastDayChart(),
              const SizedBox(
                height: 10,
              ),
              const WeeklyText(),
              const SizedBox(
                height: 10,
              ),  
              WeeklyChart(),
              const SizedBox(
                height: 10,
              ),  
              const MonthlyText(),
              const SizedBox(
                height: 10,
              ),  
              MonthlyChart(),
              const SizedBox(
                height: 10,
              ),  
              const YearlyText(),
              const SizedBox(
                height: 10,
              ),  
              YearlyChart(),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),  
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
