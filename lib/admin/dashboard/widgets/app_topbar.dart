import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AppTopbar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dashboard", style: Apptextstyle.large),

                const SizedBox(height: 4),

                Row(
                  children: [
                    Text(
                      "Home",
                      style: Apptextstyle.medium.copyWith(
                        color: AppColors.primary,
                      ),
                    ),

                    const SizedBox(width: 6),

                    const Icon(Icons.arrow_forward_ios, size: 12),

                    const SizedBox(width: 6),

                    Text("Dashboard", style: Apptextstyle.small),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 30),

          Container(
            width: Responsive.widthpercentage(context, 0.30),
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: AppColors.border),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search anything",
                prefixIcon: const Icon(Icons.search),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
    );
  }
}
