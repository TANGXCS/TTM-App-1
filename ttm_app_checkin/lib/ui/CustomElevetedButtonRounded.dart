import 'package:flutter/material.dart';

class CustomElevatedButtonRounded extends StatelessWidget {
  const CustomElevatedButtonRounded({Key? key, this.onPressed, this.text})
      : super(key: key);

  final String? text;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          minimumSize: Size.fromHeight(50), // NEW
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30), // <-- Radius
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text != null ? text! : "",
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
