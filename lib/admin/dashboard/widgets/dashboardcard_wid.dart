import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class DashboardcardWid extends StatelessWidget {
  final IconData iconsfordesign;
  final Color containerbackcolor;
  final Color iconscolor;
  final String amount;
  final String title;
  final String describe;

  const DashboardcardWid({
    super.key,
    required this.containerbackcolor,
    required this.iconsfordesign,
    required this.iconscolor,
    required this.amount,
    required this.title,
    required this.describe,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: AppColors.white,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: AppColors.textSecondary,
          ),
          borderRadius: BorderRadius.circular(15),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final iconBoxSize =
                  (constraints.maxWidth * 0.18).clamp(40.0, 60.0);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: iconBoxSize,
                    height: iconBoxSize,
                    decoration: BoxDecoration(
                      color: containerbackcolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Icon(
                        iconsfordesign,
                        color: iconscolor,
                        size: iconBoxSize * 0.45,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    amount,
                    style: Apptextstyle.large,
                  ),

                  const SizedBox(height: 5),

                  Text(
                    title,
                    style: Apptextstyle.medium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    describe,
                    style: Apptextstyle.medium.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}