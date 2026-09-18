import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminmedicinesPage extends StatefulWidget {
  const AdminmedicinesPage({super.key});

  @override
  State<AdminmedicinesPage> createState() => _AdminmedicinesPageState();
}

class _AdminmedicinesPageState extends State<AdminmedicinesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Column(children: [AppTopbar(namebar: 'Medicines')]),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),

          Row(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search, color: AppColors.border),
                    hint: Text("Search by name or generic..."),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: AppColors.border),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 1, color: AppColors.border),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
