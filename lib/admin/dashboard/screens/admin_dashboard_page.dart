import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_sidebar.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_topbar.dart';
import 'package:medicalstore/admin/dashboard/widgets/dashboardcard_wid.dart';
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
      backgroundColor: AppColors.background,
      drawer: isDesktop
          ? null
          : SizedBox(
              child: const Drawer(child: SafeArea(child: AppSidebar())),
            ),
      appBar: isDesktop ? AppTopbar() : AppBar(),
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop) const AppSidebar(),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: Responsive.heightpercentage(context, 0.04)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.primary.withOpacity(
                            0.25,
                          ),
                          iconsfordesign: LucideIcons.dollarSign,
                          iconscolor: AppColors.primary,
                          amount: 'Rs 45,250',
                          title: 'Today Sales',
                          describe: '23 invoices today',
                        ),
                      ),

                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.info.withOpacity(0.25),
                          iconsfordesign: LucideIcons.shoppingCart,
                          iconscolor: AppColors.info,
                          amount: 'Rs 2,85,000',
                          title: 'Total Purchases',
                          describe: 'This month',
                        ),
                      ),

                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.warning.withOpacity(
                            0.25,
                          ),
                          iconsfordesign: LucideIcons.package,
                          iconscolor: AppColors.warning,
                          amount: '248',
                          title: 'Total Medicines',
                          describe: '8 low stock',
                        ),
                      ),

                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.primary.withOpacity(
                            0.25,
                          ),
                          iconsfordesign: Icons.trending_up,
                          iconscolor: AppColors.primary,
                          amount: 'Rs 12,500',
                          title: 'Today Profit',
                          describe: '27.6% margin',
                        ),
                      ),
                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                    ],
                  ),
                  SizedBox(height: Responsive.heightpercentage(context, 0.02)),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),

                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: Colors.deepPurpleAccent
                              .withOpacity(0.25),
                          iconsfordesign: LucideIcons.userPlus,
                          iconscolor: Colors.deepPurpleAccent,
                          amount: '156',
                          title: 'Total Customers',
                          describe: '3 new today',
                        ),
                      ),
                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: Colors.pinkAccent.withOpacity(
                            0.25,
                          ),
                          iconsfordesign: LucideIcons.truck,
                          iconscolor: Colors.pinkAccent,
                          amount: '12',
                          title: 'Total Suppliers',
                          describe: 'Active suppliers',
                        ),
                      ),

                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.warning.withOpacity(
                            0.25,
                          ),
                          iconsfordesign: LucideIcons.alertTriangle,
                          iconscolor: AppColors.warning,
                          amount: '8',
                          title: 'Low Stock Items',
                          describe: 'Need reorder',
                        ),
                      ),

                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                      Expanded(
                        child: DashboardcardWid(
                          containerbackcolor: AppColors.danger.withOpacity(0.25),
                          iconsfordesign: LucideIcons.clock,
                          iconscolor: AppColors.danger,
                          amount: '5',
                          title: 'Expiring Soon',
                          describe: 'Within 30 days',
                        ),
                      ),
                      SizedBox(
                        width: Responsive.widthpercentage(context, 0.01),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
