import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,

    this.color = Colors.blue,
  });

  // label
  final String label;
  // on pressed
  final VoidCallback? onPressed;

  // color
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        // to disable the button, set onPressed to null
        // onPressed: null,
        // to enable the button, set onPressed to a function
        onPressed: onPressed,
        child: Text(label),
      ),
    );
  }
}
