import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminexpenessPage extends StatefulWidget {
  const AdminexpenessPage({super.key});

  @override
  State<AdminexpenessPage> createState() => _AdminexpenessPageState();
}

class _AdminexpenessPageState extends State<AdminexpenessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          AppTopbar(namebar: 'Expeness'),
          SizedBox(height: Responsive.heightpercentage(context, 0.03)),
        ],
      ),
    );
  }
}
