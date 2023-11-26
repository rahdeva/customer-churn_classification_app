import 'package:customerchurn_classification_app/resources/resources.dart';
import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        boxShadow: [AppElevation.dropShadow],
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: IconButton(
          icon: const Icon(
            Icons.keyboard_arrow_left_rounded,
            color: AppColors.primary,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}