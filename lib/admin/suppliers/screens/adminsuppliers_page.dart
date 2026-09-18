import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminsuppliersPage extends StatefulWidget {
  const AdminsuppliersPage({super.key});

  @override
  State<AdminsuppliersPage> createState() => _AdminsuppliersPageState();
}

class _AdminsuppliersPageState extends State<AdminsuppliersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Suppliers'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
