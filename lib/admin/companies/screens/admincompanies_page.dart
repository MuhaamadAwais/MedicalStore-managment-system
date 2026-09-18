import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdmincompaniesPage extends StatefulWidget {
  const AdmincompaniesPage({super.key});

  @override
  State<AdmincompaniesPage> createState() => _AdmincompaniesPageState();
}

class _AdmincompaniesPageState extends State<AdmincompaniesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Companies'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
