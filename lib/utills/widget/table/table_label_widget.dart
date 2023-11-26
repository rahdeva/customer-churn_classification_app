import 'package:customerchurn_classification_app/resources/resources.dart';
import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TableLabelWidget extends StatelessWidget {
  const TableLabelWidget({
    super.key, 
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.table,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [AppElevation.dropShadow]
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.w600
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}