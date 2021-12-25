import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    Key? key,
    this.hintText = '',
    this.labelText = '',
    this.controller,
    this.outlineBorderRadius = 11,
    this.suffixIcon,
    this.autoFocus = false,
    this.readOnly = false,
    this.height = 50,
    this.maxLines = 1,
    this.maxLength = 30,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onTap,
    this.elevated = true,
    this.hasToShowError = false,
    this.errorText = '',
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final TextEditingController? controller;
  final double outlineBorderRadius;
  final String? suffixIcon;
  final bool autoFocus;
  final bool readOnly;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final int maxLines;
  final double height;
  final int maxLength;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool hasToShowError;
  final String errorText;
  final bool elevated;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 6.0, bottom: 5),
          child: Text(
            labelText,
          ),
        ),
        Card(
          elevation: elevated ? 2 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(outlineBorderRadius),
          ),
          color: Colors.white,
          child: Container(
            height: height,
            padding: const EdgeInsets.only(right: 10),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  top: 6,
                  right: 16,
                ),
                hintText: hintText,
                counterText: '',
                suffixIconConstraints:
                    const BoxConstraints(minHeight: 16, minWidth: 16),
              ),
              controller: controller,
              readOnly: readOnly,
              autofocus: autoFocus,
              maxLength: maxLength,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              maxLines: maxLines,
              onTap: onTap,
            ),
          ),
        ),
        const SizedBox(height: 8),
        if (hasToShowError)
          Row(
            children: const [
              SizedBox(width: 10),
              SizedBox(width: 8),
            ],
          ),
      ],
    );
  }
}
