import 'package:flutter/material.dart';
import 'package:medicalstore/core/constants/apptextstyle.dart';
import 'package:medicalstore/core/theme/appcolor.dart';

class Recentsaleswid extends StatelessWidget {
  const Recentsaleswid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> recentSales = [
      {
        'invoice': 'S1-001',
        'customer': 'Ahmad Khan',
        'amount': 'Rs 2300',
        'status': 'Paid',
        'color': AppColors.primary,
      },
      {
        'invoice': 'S1-002',
        'customer': 'Ali Raza',
        'amount': 'Rs 1800',
        'status': 'Paid',
        'color': AppColors.primary,
      },
      {
        'invoice': 'S1-003',
        'customer': 'Usman Ahmed',
        'amount': 'Rs 3200',
        'status': 'Paid',
        'color': AppColors.primary,
      },
      {
        'invoice': 'S1-004',
        'customer': 'Hamza Ali',
        'amount': 'Rs 1500',
        'status': 'Paid',
        'color': AppColors.primary,
      },
      {
        'invoice': 'S1-005',
        'customer': 'Bilal Khan',
        'amount': 'Rs 2700',
        'status': 'Unpaid',
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
                    'Recent Sales',
                    style: Apptextstyle.large,
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Text(
                    'View all',
                    style: Apptextstyle.large.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // =================================================
            // TABLE HEADER
            // =================================================

            _tableHeader(),

            const SizedBox(height: 16),

            // =================================================
            // SALES DATA
            // =================================================

            ...recentSales.map(
              (sale) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 16,
                ),
                child: _saleRow(
                  sale: sale,
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
          flex: 2,
          child: _headerText(
            'Invoice',
          ),
        ),

        Expanded(
          flex: 3,
          child: _headerText(
            'Customer',
          ),
        ),

        Expanded(
          flex: 2,
          child: _headerText(
            'Amount',
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
  // SALES ROW
  // =========================================================

  Widget _saleRow({
    required Map<String, dynamic> sale,
  }) {
    final Color statusColor = sale['color'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // =====================================================
        // INVOICE
        // =====================================================

        Expanded(
          flex: 2,
          child: _valueText(
            sale['invoice'],
          ),
        ),

        // =====================================================
        // CUSTOMER
        // =====================================================

        Expanded(
          flex: 3,
          child: _valueText(
            sale['customer'],
          ),
        ),

        // =====================================================
        // AMOUNT
        // =====================================================

        Expanded(
          flex: 2,
          child: _valueText(
            sale['amount'],
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
                  horizontal: 12,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: statusColor.withOpacity(0.25),
                ),
                child: Text(
                  sale['status'],
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

  Widget _valueText(String text) {
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
          color: AppColors.textSecondary,
        ),
      ),
    );
  }

  // =========================================================
  // HEADER TEXT
  // =========================================================

  Widget _headerText(String text) {
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
