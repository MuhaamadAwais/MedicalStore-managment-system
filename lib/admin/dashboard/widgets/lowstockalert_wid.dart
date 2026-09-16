
import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class LowstockalertWid extends StatelessWidget {
  const LowstockalertWid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> lowStockMedicines = [
      {
        'medicine': 'Augmentin 625mg',
        'stock': '45',
        'reorder': '30',
        'status': 'Low Stock',
        'color': AppColors.warning,
      },
      {
        'medicine': 'Panadol 500mg',
        'stock': '25',
        'reorder': '30',
        'status': 'Low Stock',
        'color': AppColors.warning,
      },
      {
        'medicine': 'Brufen 400mg',
        'stock': '10',
        'reorder': '30',
        'status': 'Low',
        'color': AppColors.danger,
      },
      {
        'medicine': 'Amoxicillin 500mg',
        'stock': '20',
        'reorder': '30',
        'status': 'Low Stock',
        'color': AppColors.warning,
      },
      {
        'medicine': 'Disprin 300mg',
        'stock': '15',
        'reorder': '30',
        'status': 'Low Stock',
        'color': AppColors.warning,
      },
    ];

    return Card(
      elevation: 2,
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 1,
            color: AppColors.textSecondary,
          ),
        ),
        child: Column(
          children: [
            // =================================================
            // HEADER
            // =================================================

            Row(
              children: [
                Expanded(
                  child: Text(
                    'Low Stock Alert',
                    style: Apptextstyle.large,
                  ),
                ),

                Text(
                  'Manage',
                  style: Apptextstyle.large.copyWith(
                    color: AppColors.danger,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // =================================================
            // TABLE HEADER
            // =================================================

            _tableHeader(),

            const SizedBox(height: 15),

            // =================================================
            // TABLE DATA
            // =================================================

            ...lowStockMedicines.map(
              (medicine) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: _medicineRow(
                  medicine: medicine,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =========================================================
  // TABLE HEADER
  // =========================================================

  Widget _tableHeader() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: _headerText(
            'Medicine',
          ),
        ),

        Expanded(
          flex: 2,
          child: _headerText(
            'Stock',
          ),
        ),

        Expanded(
          flex: 2,
          child: _headerText(
            'Reorder At',
          ),
        ),

        Expanded(
          flex: 2,
          child: _headerText(
            'Status',
          ),
        ),
      ],
    );
  }

  // =========================================================
  // MEDICINE ROW
  // =========================================================

  Widget _medicineRow({
    required Map<String, dynamic> medicine,
  }) {
    final Color statusColor = medicine['color'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // =====================================================
        // MEDICINE
        // =====================================================

        Expanded(
          flex: 3,
          child: _valueText(
            medicine['medicine'],
            color: AppColors.textSecondary,
          ),
        ),

        // =====================================================
        // STOCK
        // =====================================================

        Expanded(
          flex: 2,
          child: _valueText(
            medicine['stock'],
            color: statusColor,
          ),
        ),

        // =====================================================
        // REORDER
        // =====================================================

        Expanded(
          flex: 2,
          child: _valueText(
            medicine['reorder'],
            color: AppColors.textSecondary,
          ),
        ),

        // =====================================================
        // STATUS
        // =====================================================

        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: statusColor.withOpacity(0.25),
                ),
                child: Text(
                  medicine['status'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Apptextstyle.medium.copyWith(
                    color: statusColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // =========================================================
  // VALUE TEXT
  // =========================================================

  Widget _valueText(
    String text, {
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: Apptextstyle.medium.copyWith(
          color: color,
        ),
      ),
    );
  }

  // =========================================================
  // HEADER TEXT
  // =========================================================

  Widget _headerText(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: Apptextstyle.large.copyWith(
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}
