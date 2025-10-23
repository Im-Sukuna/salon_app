import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericButton extends StatelessWidget {
  const GenericButton({super.key, required this.onPressed,this.bgColor, this.height, this.width, required this.buttonText});
  final void Function()? onPressed;
  final Color? bgColor;
  final double? height;
  final double? width;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor?? Color(0xFF004CFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        //maximumSize: Size(335, 61),
        minimumSize: Size(width?? 370, height?? 61),
      ),
      child: Text(
        buttonText,
        style: GoogleFonts.nunitoSans(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}

