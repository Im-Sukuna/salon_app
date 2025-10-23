import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericTextButton extends StatelessWidget {
  const GenericTextButton({super.key, required this.onPressed, required this.buttonText, this.fontSize});

  final void Function()? onPressed;
  final String buttonText;
  final double? fontSize;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          buttonText,
          style: GoogleFonts.nunitoSans(
            textStyle: TextStyle(
              fontSize: 15,
              color: Color(0xFF202020),
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
