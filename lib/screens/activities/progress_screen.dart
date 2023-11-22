import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'dart:math';

import '../screens.dart';

class ProgressScreen extends StatelessWidget {
  final Activity activity;

  ProgressScreen({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 300,
        child: Column(
          children: <Widget>[
            Text(
              '${activity.gamePlayed} Progreso',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 20),
            Expanded(
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: [
                    PieChartSectionData(
                      color: Colors.blue[400],
                      value: 100.0 * getRandomProgress(),
                      title: 'Progreso',
                    ),
                    PieChartSectionData(
                      color: Colors.blueGrey[600],
                      value: 100.0 * (1 - getRandomProgress()),
                      title: 'Restante',
                    ),
                  ],
                ),
              ),
            ),
            Text('Tiempo jugado este mes: ${getRandomTime()}'),
          ],
        ),
      ),
    );
  }

  String getRandomTime() {
    Random random = new Random();
    int minutes = random.nextInt(60);
    int hours = random.nextInt(24);
    int days = random.nextInt(30);

    if (days > 0) {
      return '$days días';
    } else if (hours > 0) {
      return '$hours h';
    } else {
      return '$minutes min';
    }
  }
}

double getRandomProgress() {
  Random random = new Random();
  return random.nextDouble();
}
