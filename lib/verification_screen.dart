import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:salon_app/login_screen.dart';
import 'package:salon_app/utils/generic_dialog.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/images/verification_bubble.svg",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/images/verification_bubble_two.svg",
                fit: BoxFit.contain,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 157),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/images/shopping_bag_icon.svg",
                      //fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Account Verification",
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Enter 4-digit code we sent you"
                  "\non your business phone number",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(fontSize: 19),
                  ),
                ),
                SizedBox(height: 35),
                Text(
                  "080******97",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //height: 2.5,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Pinput(),
                SizedBox(height: 146),
                Padding(
                  padding: const EdgeInsets.only(left: 87, right: 87),
                  child: ElevatedButton(
                    onPressed: () {
                     GenericDialog.showModal(context:context,
                       successMessage: "Your account has been \ncreated and sent for \napproval",
                     );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF004CFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(283, 50),
                    ),
                    child: Text(
                      "Verify",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 29),
                Text(
                  "Resend Code",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
