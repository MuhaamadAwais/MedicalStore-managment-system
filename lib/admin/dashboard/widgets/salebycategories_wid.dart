import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class Salebycategorieswid extends StatelessWidget {
  const Salebycategorieswid({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 350,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: AppColors.textSecondary,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [    Text(
              'Sales by Categories',
              style: Apptextstyle.large,
            ),

            const SizedBox(height: 5),

            Text(
              'Medicine sales distribution',
              style: Apptextstyle.medium,
            ),

            const SizedBox(height: 15),

            // =========================
            // PIE CHART
            // =========================
            Expanded(
              child: PieChart(
                PieChartData(
                  centerSpaceRadius: 35,
                  sectionsSpace: 3,

                  sections: [
                    // Tablets
                    PieChartSectionData(
                      value: 35,
                      title: '35%',
                      radius: 60,
                      color: AppColors.primary,
                      showTitle: true,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Syrups
                    PieChartSectionData(
                      value: 25,
                      title: '25%',
                      radius: 60,
                      color: AppColors.info,
                      showTitle: true,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Injections
                    PieChartSectionData(
                      value: 18,
                      title: '18%',
                      radius: 60,
                      color: AppColors.warning,
                      showTitle: true,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Capsules
                    PieChartSectionData(
                      value: 12,
                      title: '12%',
                      radius: 60,
                      color: Colors.deepPurple,
                      showTitle: true,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Creams
                    PieChartSectionData(
                      value: 10,
                      title: '10%',
                      radius: 60,
                      color: AppColors.danger,
                      showTitle: true,
                      titleStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _legendItem(
                  color: AppColors.primary,
                  title: 'Tablets',
                ),

                _legendItem(
                  color: AppColors.info,
                  title: 'Syrups',
                ),

                _legendItem(
                  color: AppColors.warning,
                  title: 'Injections',
                ),
              ],
            ),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _legendItem(
                  color: Colors.deepPurple,
                  title: 'Capsules',
                ),

                _legendItem(
                  color: AppColors.danger,
                  title: 'Creams',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _legendItem({
    required Color color,
    required String title,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),

        const SizedBox(width: 6),

        Text(
          title,
          style: Apptextstyle.medium,
        ),
      ],
    );
  }
}