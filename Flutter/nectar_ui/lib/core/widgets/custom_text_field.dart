import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.label,
    this.hint,
    this.prefix,
    this.suffix,
    this.validator,
  });

  final String? label;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: prefix,
        suffixIcon: suffix,
      ),
    );
  }
}
