import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AppTopbar extends StatelessWidget {
  final String namebar;
  const AppTopbar({super.key, required this.namebar});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.heightpercentage(context, 0.115),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: Responsive.widthpercentage(context, 0.01)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(namebar, style: Apptextstyle.large),

              SizedBox(height: Responsive.heightpercentage(context, 0.001)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Home", style: Apptextstyle.medium.copyWith()),

                  SizedBox(width: Responsive.widthpercentage(context, 0.005)),

                  const SizedBox(
                    width: 12,
                    height: 16,
                    child: Center(
                      child: Icon(Icons.arrow_forward_ios, size: 10),
                    ),
                  ),

                  SizedBox(width: Responsive.widthpercentage(context, 0.005)),

                  Text(
                    namebar,
                    style: Apptextstyle.small.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Spacer(),

          Container(
            width: Responsive.widthpercentage(context, 0.25),
            height: Responsive.heightpercentage(context, 0.075),
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: AppColors.border),
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(width: 1, color: AppColors.primary),
                  ),
                  hintText: "Search anything",
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(width: Responsive.widthpercentage(context, 0.01)),
        ],
      ),
    );
  }
}
