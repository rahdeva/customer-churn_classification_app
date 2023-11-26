import 'package:customerchurn_classification_app/routes/page_names.dart';
import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:customerchurn_classification_app/utills/widget/forms/dropdown_widget.dart';
import 'package:customerchurn_classification_app/utills/widget/table/table_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '/utills/widget/button/primary_button.dart';
import '/resources/resources.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) {
            return FormBuilder(
              // key: controller.formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 16),
                    Container(
                      width: 100.w,
                      height: 100.h,
                      padding: const EdgeInsets.fromLTRB(24, 40, 24, 0),
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
                          Text(
                            "Customer Churn\nClassification",
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: AppColors.title,
                              fontWeight: FontWeight.w700
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 24),
                          const Divider(color: AppColors.title, thickness: 0.5),
                          const SizedBox(height: 24),
                          const TableLabelWidget(
                            label: "Table 1"
                          ),
                          const SizedBox(height: 16),
                          const DropdownWidget(
                            name: "dropdown", 
                            dropdownItems: [
                              "A",
                              "B"
                            ]
                          ),
                          const SizedBox(height: 16),
                          const TableLabelWidget(
                            label: "Table 2"
                          ),
                          const SizedBox(height: 16),
                          const DropdownWidget(
                            name: "dropdown", 
                            dropdownItems: [
                              "A",
                              "B"
                            ]
                          ),
                          const SizedBox(height: 16),
                          const TableLabelWidget(
                            label: "Table 3"
                          ),
                          const SizedBox(height: 16),
                          const DropdownWidget(
                            name: "dropdown", 
                            dropdownItems: [
                              "A",
                              "B"
                            ]
                          ),
                          const SizedBox(height: 16),
                          const TableLabelWidget(
                            label: "Table 4"
                          ),
                          const SizedBox(height: 16),
                          const DropdownWidget(
                            name: "dropdown", 
                            dropdownItems: [
                              "A",
                              "B"
                            ]
                          ),
                          const SizedBox(height: 40),
                          PrimaryButtonWidget(
                            buttonText: "Submit",
                            margin: const EdgeInsets.all(0),
                            onPressed: () async {
                              // if (
                              //   controller.formKey.currentState != null &&
                              //   controller.formKey.currentState!.saveAndValidate()
                              // ){
                              //   controller.signInWithEmailAndPassword(
                              //     controller.formKey.currentState!.fields['username']!.value,
                              //     controller.formKey.currentState!.fields['password']!.value,
                              //   );
                              // }
                              Get.toNamed(PageName.RESULT);
                            },
                          ),
                        ],
                      ),
                    ),
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

