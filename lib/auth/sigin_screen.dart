import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:medicalstore/admin/dashboard/screens/admin_dashboard_page.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class SiginScreen extends StatefulWidget {
  const SiginScreen({super.key});

  @override
  State<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends State<SiginScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: screenHeight),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ================= LEFT SIDE =================
                  Expanded(
                    flex: 6,
                    child: Container(
                      color: AppColors.primary,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: Responsive.widthpercentage(
                                    context,
                                    0.08,
                                  ),
                                  height: Responsive.widthpercentage(
                                    context,
                                    0.08,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColors.white.withOpacity(0.15),
                                  ),
                                  child: Icon(
                                    LucideIcons.package,
                                    color: AppColors.white,
                                    size: 20,
                                  ),
                                ),

                                SizedBox(
                                  width: Responsive.widthpercentage(
                                    context,
                                    0.015,
                                  ),
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "MedStore Pro",
                                      style: Apptextstyle.large.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                    Text(
                                      "Management System",
                                      style: Apptextstyle.medium.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.07,
                              ),
                            ),

                            // ================= CARDS =================
                            Row(
                              children: [
                                Expanded(
                                  child: _featureCard(
                                    context,
                                    "Medicines",
                                    223,
                                    LucideIcons.package,
                                  ),
                                ),

                                SizedBox(
                                  width: Responsive.widthpercentage(
                                    context,
                                    0.02,
                                  ),
                                ),

                                Expanded(
                                  child: _featureCard(
                                    context,
                                    "Today Sales",
                                    233,
                                    LucideIcons.receipt,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.02,
                              ),
                            ),

                            Row(
                              children: [
                                Expanded(
                                  child: _featureCard(
                                    context,
                                    "Purchases",
                                    22,
                                    LucideIcons.shoppingCart,
                                  ),
                                ),

                                SizedBox(
                                  width: Responsive.widthpercentage(
                                    context,
                                    0.02,
                                  ),
                                ),

                                Expanded(
                                  child: _featureCard(
                                    context,
                                    "Customers",
                                    999,
                                    LucideIcons.userCheck,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.05,
                              ),
                            ),

                            Text(
                              "Your Complete",
                              style: Apptextstyle.large.copyWith(
                                color: AppColors.white,
                              ),
                            ),

                            Text(
                              "Pharmacy Solution",
                              style: Apptextstyle.large.copyWith(
                                color: AppColors.white,
                              ),
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.015,
                              ),
                            ),

                            Text(
                              "Manage medicines, sales, purchases, inventory, "
                              "and reports all in",
                              style: Apptextstyle.medium.copyWith(
                                color: AppColors.white,
                              ),
                            ),

                            Text(
                              "one place.",
                              style: Apptextstyle.medium.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // ================= RIGHT SIDE =================
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: AppColors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome back", style: Apptextstyle.large),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.01,
                              ),
                            ),

                            Text(
                              "Sign in to your account",
                              style: Apptextstyle.medium.copyWith(
                                color: AppColors.textSecondary,
                              ),
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.04,
                              ),
                            ),

                            // ================= EMAIL =================
                            Text("Email Address", style: Apptextstyle.medium),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.01,
                              ),
                            ),

                            SizedBox(
                              width: double.infinity,
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email address",
                                  hintStyle: Apptextstyle.small.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.textSecondary,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.025,
                              ),
                            ),

                            // ================= PASSWORD =================
                            Text("Password", style: Apptextstyle.medium),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.01,
                              ),
                            ),

                            SizedBox(
                              width: double.infinity,
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  hintStyle: Apptextstyle.small.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.textSecondary,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.primary,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.04,
                              ),
                            ),

                            // ================= ADMIN BUTTON =================
                            SizedBox(
                              width: double.infinity,
                              height: Responsive.heightpercentage(
                                context,
                                0.075,
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          AdminDashboardPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.primaryDark,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Login as Admin",
                                      style: Apptextstyle.medium.copyWith(
                                        color: AppColors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: Responsive.heightpercentage(
                                context,
                                0.02,
                              ),
                            ),

                            // ================= STAFF BUTTON =================
                            SizedBox(
                              width: double.infinity,
                              height: Responsive.heightpercentage(
                                context,
                                0.075,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.border,
                                ),
                                child: Center(
                                  child: Text(
                                    "Login as Staff",
                                    style: Apptextstyle.medium.copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _featureCard(
    BuildContext context,
    String title,
    double numberofitems,
    IconData iconss,
  ) {
    return Container(
      height: Responsive.heightpercentage(context, 0.20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.white.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(iconss, color: AppColors.white, size: 20),

            Text(
              numberofitems.toString(),
              style: Apptextstyle.large.copyWith(color: AppColors.white),
            ),

            Text(
              title,
              style: Apptextstyle.medium.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
