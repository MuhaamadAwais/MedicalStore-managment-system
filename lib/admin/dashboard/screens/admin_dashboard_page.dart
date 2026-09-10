import 'package:flutter/material.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_sidebar.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: isDesktop
          ? null
          : SizedBox(
              width: Responsive.widthpercentage(context, 0.6),
              child: const Drawer(child: SafeArea(child: AppSidebar())),
            ),

      // Mobile par hamburger button automatically show hoga
      appBar: isDesktop ? null : AppBar(title: const Text('Dashboard')),

      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop) const AppSidebar(),

            const Expanded(
              child: Center(
                child: Text('Dashboard', style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
