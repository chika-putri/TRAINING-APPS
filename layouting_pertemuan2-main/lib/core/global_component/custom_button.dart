import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? borderColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    this.text, // Tidak required
    this.backgroundColor, // Tidak required
    this.textColor, // Tidak required
    this.width, // Tidak required
    this.height, // Tidak required
    this.borderRadius, // Tidak required
    this.borderColor, // Tidak required
    this.onPressed, // Tidak required
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 150, // Default width jika tidak diberikan
      height: height ?? 50, // Default height jika tidak diberikan
      child: ElevatedButton(
        onPressed: onPressed ?? () {}, // Jika onPressed tidak diberikan
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.blue, // Default warna background
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8), // Default border radius
            side: BorderSide(color: borderColor ?? Colors.transparent), // Default border color
          ),
        ),
        child: Text(
          text ?? 'Button', // Default teks jika tidak diberikan
          style: TextStyle(
            color: textColor ?? Colors.white, // Default warna teks
          ),
        ),
      ),
    );
  }
}
