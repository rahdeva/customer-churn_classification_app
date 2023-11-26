import 'package:customerchurn_classification_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../resources/resources.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    Key? key,
    required this.name,
    required this.dropdownItems,
    this.hintText,
    this.initialValue,
    this.label,
    this.enabled = true,
    this.onChanged,
    this.validator, 
    this.suffixIcon, 
    this.prefixIcon, 
    this.hintColor, 
  }) : super(key: key);

  final String name;
  final String? hintText;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? hintColor;
  final bool enabled;
  final String? initialValue;
  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final List<String> dropdownItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [AppElevation.dropShadow],
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white,
      ),
      child: FormBuilderDropdown(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        items: dropdownItems.map(
          (item) => DropdownMenuItem(
            value: item,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              item,
              textAlign: TextAlign.left,
              overflow: TextOverflow.visible,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.black
              ),
            ),
          )
        ).toList(),
        enabled: enabled,
        name: name,
        icon: const Icon(
          Icons.keyboard_arrow_down,
          color: AppColors.gray500,
        ),
        selectedItemBuilder: (context) => dropdownItems.map(
          (value) => Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
          )
        ).toList(),
        decoration: InputDecoration(
          isDense: true,
          labelText: label,
          hintText: hintText,
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none
          ),
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: hintColor ?? AppColors.gray500
          ),
          errorStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: AppColors.red
          ),
        ),
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.w400
        ),
        onChanged: onChanged,
        validator: validator,
      ),
    );
  }
}