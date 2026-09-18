import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/constants/responsive.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AppSidebar extends StatelessWidget {
  final int selectedindex;
  final ValueChanged<int> onItemSelected;
  const AppSidebar({
    super.key,
    required this.selectedindex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: AppColors.textDark,
      child: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          // ================= HEADER =================
          SizedBox(
            height: Responsive.heightpercentage(context, 0.20),
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryDark,
                    ),
                    child: const Icon(
                      LucideIcons.package,
                      color: AppColors.white,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MedStore",
                        style: Apptextstyle.large.copyWith(
                          color: AppColors.white,
                        ),
                      ),

                      Text(
                        "Admin panel",
                        style: Apptextstyle.medium.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // ================= DASHBOARD =================
          _menuItem(icon: LucideIcons.grid, title: "Dashboard", index: 0),
          // ================= INVENTORY =================
          _sectionTitle("Inventory"),
          _menuItem(icon: LucideIcons.box, title: "Medicines", index: 1),
          _menuItem(icon: LucideIcons.tag, title: "Categories", index: 2),
          _menuItem(icon: LucideIcons.building, title: "Companies", index: 3),
          _menuItem(icon: LucideIcons.truck, title: "Suppliers", index: 4),

          // ================= TRANSACTIONS =================
          _sectionTitle("Transactions"),

          _menuItem(
            icon: LucideIcons.shoppingCart,
            title: "Purchases",
            index: 5,
          ),
          _menuItem(icon: LucideIcons.receipt, title: "Sales", index: 6),
          _menuItem(icon: LucideIcons.userCheck, title: "Customers", index: 7),

          // ================= MANAGEMENT =================
          _sectionTitle("Management"),
          _menuItem(icon: LucideIcons.archive, title: "Inventory", index: 8),
          _menuItem(icon: LucideIcons.wallet, title: "Expenses", index: 9),
          _menuItem(icon: LucideIcons.creditCard, title: "Payments", index: 10),
          _sectionTitle("Analytics"),
          _menuItem(icon: LucideIcons.barChart3, title: "Reports", index: 11),
          _sectionTitle("System"),
          _menuItem(icon: LucideIcons.users, title: "Users/Staff", index: 12),
          _menuItem(icon: LucideIcons.settings, title: "Settings", index: 13),

          // ================= SIGN OUT =================
          const SizedBox(height: 20),

          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: Icon(LucideIcons.logOut, color: AppColors.danger),
            title: Text(
              "Sign Out",
              style: Apptextstyle.medium.copyWith(color: AppColors.danger),
            ),
            onTap: () {
              // Sign out logic
            },
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // ================= SECTION TITLE =================
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 18, bottom: 6),
      child: Text(
        title,
        style: Apptextstyle.medium.copyWith(color: AppColors.textSecondary),
      ),
    );
  }

  // ================= MENU ITEM =================
  Widget _menuItem({
    required IconData icon,
    required String title,
    required int index,
  }) {
    final bool indexSelected = selectedindex == index;
    return Container(
  
      decoration: BoxDecoration(
        color: indexSelected ? AppColors.primary : Colors.transparent,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        leading: Icon(icon, color: AppColors.white),
        title: Text(
          title,
          style: Apptextstyle.medium.copyWith(color: AppColors.white),
        ),
        onTap: () {
          onItemSelected(index);
        },
      ),
    );
  }
}
