import 'package:customerchurn_classification_app/resources/resources.dart';
import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondaryButtonWidget extends StatelessWidget {
  const SecondaryButtonWidget({
    Key? key, 
    required this.text, 
    required this.outlinedColor, 
    required this.onPressed,
    required this.churn,
  }) : super(key: key);

  final String text;
  final bool churn;
  final Color outlinedColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w - 32,
      height: 40,
      decoration: BoxDecoration(
        boxShadow: [AppElevation.dropShadow]
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.background),
          overlayColor: MaterialStateProperty.all(AppColors.white),
          foregroundColor: MaterialStateProperty.all(outlinedColor),
          side: MaterialStateProperty.all(
            BorderSide(color: outlinedColor)
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: churn == true ? AppColors.churn : AppColors.notChurn,
            fontWeight: FontWeight.w600
          )
        ),
      ),
    );
  }
}
