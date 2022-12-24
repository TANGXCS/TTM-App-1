import 'package:flutter/material.dart';

class CustomTextFieldRounded extends StatelessWidget {
  const CustomTextFieldRounded(
      {Key? key, this.onChanged, this.hint, this.keyboardType})
      : super(key: key);

  final ValueChanged<String>? onChanged;
  final String? hint;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      style: const TextStyle(fontSize: 18),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: hint,
        labelStyle: TextStyle(fontSize: 18, color: Colors.grey.shade500),
        contentPadding: const EdgeInsets.all(15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
        ),
      ),
      keyboardType: keyboardType,
    );
  }
}
