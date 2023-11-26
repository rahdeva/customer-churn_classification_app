import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:customerchurn_classification_app/utills/widget/button/back_button.dart';
import 'package:customerchurn_classification_app/utills/widget/button/primary_button.dart';
import 'package:customerchurn_classification_app/utills/widget/button/secondary_button.dart';
import 'package:customerchurn_classification_app/utills/widget/table/table_result_widget.dart';
import 'package:customerchurn_classification_app/utills/widget/table/table_label_result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '/resources/resources.dart';

import 'result_controller.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: GetBuilder<ResultController>(
          init: ResultController(),
          builder: (controller) {
            return FormBuilder(
              // key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const BackButtonWidget(),
                    Container(
                      width: 100.w,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      constraints: BoxConstraints(minHeight: 90.h),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        boxShadow: [AppElevation.dropShadow],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30), 
                          topRight: Radius.circular(30), 
                        )
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 40),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  TableLabelResultWidget(label: "Table 1"),
                                  SizedBox(height: 16),
                                  TableResultWidget(label: "Table 1"),
                                ],
                              ),
                              Column(
                                children: [
                                  TableLabelResultWidget(label: "Table 2"),
                                  SizedBox(height: 16),
                                  TableResultWidget(label: "Table 2"),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  TableLabelResultWidget(label: "Table 3"),
                                  SizedBox(height: 16),
                                  TableResultWidget(label: "Table 3"),
                                ],
                              ),
                              Column(
                                children: [
                                  TableLabelResultWidget(label: "Table 4"),
                                  SizedBox(height: 16),
                                  TableResultWidget(label: "Table 4"),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Container(
                            margin: const EdgeInsets.fromLTRB(40, 24, 40, 28),
                            child: Text(
                              "Result",
                              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                                color: AppColors.title,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PrimaryButtonWidget(
                                margin: const EdgeInsets.all(0),
                                width: 50.w - 32,
                                height: 40,
                                buttonText: "Churn", 
                                borderRadius: 20,
                                customColors: AppColors.churn,
                                onPressed: (){}
                              ),
                              SecondaryButtonWidget(
                                text: "Not Churn", 
                                churn: false,
                                outlinedColor: AppColors.notChurn, 
                                onPressed: (){}
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SecondaryButtonWidget(
                                text: "Churn", 
                                churn: true,
                                outlinedColor: AppColors.churn, 
                                onPressed: (){}
                              ),
                              PrimaryButtonWidget(
                                margin: const EdgeInsets.all(0),
                                width: 50.w - 32,
                                height: 40,
                                buttonText: "Not Churn", 
                                borderRadius: 20,
                                customColors: AppColors.notChurn,
                                onPressed: (){}
                              ),
                            ],
                          ),
                        ]
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

