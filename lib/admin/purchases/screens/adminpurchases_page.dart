import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminpurchasesPage extends StatefulWidget {
  const AdminpurchasesPage({super.key});

  @override
  State<AdminpurchasesPage> createState() => _AdminpurchasesPageState();
}

class _AdminpurchasesPageState extends State<AdminpurchasesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Purchases'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
