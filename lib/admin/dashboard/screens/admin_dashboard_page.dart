import 'package:flutter/material.dart';
import 'package:medicalstore/admin/categories/screens/admincategories_page.dart';
import 'package:medicalstore/admin/companies/screens/admincompanies_page.dart';
import 'package:medicalstore/admin/customers/screens/admincustomers_page.dart';
import 'package:medicalstore/admin/dashboard/screens/dashboard_content.dart';
import 'package:medicalstore/admin/dashboard/widgets/app_sidebar.dart';
import 'package:medicalstore/admin/expreness/screens/adminexpeness_page.dart';
import 'package:medicalstore/admin/inventory/screens/admininventory_page.dart';
import 'package:medicalstore/admin/medicines/screens/adminmedicines_page.dart';
import 'package:medicalstore/admin/payments/screens/adminpayments_page.dart';
import 'package:medicalstore/admin/purchases/screens/adminpurchases_page.dart';
import 'package:medicalstore/admin/reports/screens/adminreport_page.dart';
import 'package:medicalstore/admin/sales/screens/adminsales_page.dart';
import 'package:medicalstore/admin/settings/screens/adminsetting_page.dart';
import 'package:medicalstore/admin/suppliers/screens/adminsuppliers_page.dart';
import 'package:medicalstore/admin/users/screens/adminusers_page.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Row(
        children: [
          AppSidebar(
            selectedindex: selectedIndex,
            onItemSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),

          Expanded(child: _getCurrentPage()),
        ],
      ),
    );
  }

  Widget _getCurrentPage() {
    switch (selectedIndex) {
      case 0:
        return DashboardContent();
      case 1:
        return AdminmedicinesPage();
      case 2:
        return AdmincategoriesPage();
      case 3:
        return AdmincompaniesPage();
      case 4:
        return AdminsuppliersPage();
      case 5:
        return AdminpurchasesPage();
      case 6:
        return AdminsalesPage();
      case 7:
        return AdmincustomersPage();
      case 8:
        return AdmininventoryPage();
      case 9:
        return AdminexpenessPage();
      case 10:
        return AdminpaymentsPage();
      case 11:
        return AdminreportPage();
      case 12:
        return AdminusersPage();
      case 13:
        return AdminsettingPage();
      default:
        return DashboardContent();
    }
  }
}
