import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class Salesandperchasegraphwid extends StatelessWidget {
  const Salesandperchasegraphwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: AppColors.white,
      child: Container(
        height: 350,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.textSecondary,
          ),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sales & Purchase Overview",
              style: Apptextstyle.large,
            ),

            const SizedBox(height: 5),

            Text(
              "Last 6 Months",
              style: Apptextstyle.medium,
            ),

            const SizedBox(height: 15),

            Expanded(
              child: LineChart(
                LineChartData(
                  minY: 0,
                  maxY: 250000,

                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 50000,
                  ),

                  borderData: FlBorderData(
                    show: false,
                  ),

                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),

                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),

                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          const months = [
                            'Jan',
                            'Feb',
                            'Mar',
                            'Apr',
                            'May',
                            'Jun',
                          ];

                          if (value < 0 ||
                              value >= months.length) {
                            return const SizedBox();
                          }

                          return Text(
                            months[value.toInt()],
                            style: Apptextstyle.medium,
                          );
                        },
                      ),
                    ),

                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 45,
                        interval: 50000,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '${(value / 1000).toInt()}k',
                            style: Apptextstyle.medium,
                          );
                        },
                      ),
                    ),
                  ),

                  lineBarsData: [
                    // =========================
                    // SALES
                    // =========================
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 120000),
                        FlSpot(1, 150000),
                        FlSpot(2, 130000),
                        FlSpot(3, 180000),
                        FlSpot(4, 165000),
                        FlSpot(5, 210000),
                      ],

                      isCurved: true,
                      barWidth: 3,
                      color: AppColors.primary,

                      dotData: const FlDotData(
                        show: true,
                      ),

                      belowBarData: BarAreaData(
                        show: true,
                        color: AppColors.primary.withOpacity(0.08),
                      ),
                    ),

                    // =========================
                    // PURCHASES
                    // =========================
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 80000),
                        FlSpot(1, 95000),
                        FlSpot(2, 110000),
                        FlSpot(3, 120000),
                        FlSpot(4, 100000),
                        FlSpot(5, 140000),
                      ],

                      isCurved: true,
                      barWidth: 3,
                      color: AppColors.info,

                      dotData: const FlDotData(
                        show: true,
                      ),

                      belowBarData: BarAreaData(
                        show: true,
                        color: AppColors.info.withOpacity(0.08),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),

                const SizedBox(width: 6),

                const Text("Sales"),

                const SizedBox(width: 20),

                Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: AppColors.info,
                    shape: BoxShape.circle,
                  ),
                ),

                const SizedBox(width: 6),

                const Text("Purchases"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}