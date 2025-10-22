import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessModal extends StatelessWidget {
  const SuccessModal({super.key, this.successMessage});

  final String? successMessage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 347,
      height: 225,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              successMessage ?? "we are showing this text because no message was supplied",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunitoSans(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 50,
              width: 201,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF202020),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  //minimumSize: Size(201, 50),
                ),
                child: Text(
                  "Okay",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
