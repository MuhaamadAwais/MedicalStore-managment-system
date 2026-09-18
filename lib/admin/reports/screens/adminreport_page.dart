import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminreportPage extends StatefulWidget {
  const AdminreportPage({super.key});

  @override
  State<AdminreportPage> createState() => _AdminreportPageState();
}

class _AdminreportPageState extends State<AdminreportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Reports'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
