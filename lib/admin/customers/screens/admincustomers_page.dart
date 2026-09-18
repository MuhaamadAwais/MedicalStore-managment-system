import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdmincustomersPage extends StatefulWidget {
  const AdmincustomersPage({super.key});

  @override
  State<AdmincustomersPage> createState() => _AdmincustomersPageState();
}

class _AdmincustomersPageState extends State<AdmincustomersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Customers'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
