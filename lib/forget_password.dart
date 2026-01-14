import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/forget_password_code.dart';
import 'package:salon_app/login_screen.dart';
import 'package:salon_app/widget/generic_button.dart';
import 'package:salon_app/widget/generic_text_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "assets/images/login_screen.svg",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "assets/images/login_screen1.svg",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment(1.0, -0.25),
              child: SvgPicture.asset(
                "assets/images/login_screen2.svg",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                "assets/images/login_screen3.svg",
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 479),
                  Text(
                    "Forget Password",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 33.8),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13.75,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 41.7),
                  GenericButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPasswordCode(),
                        ),
                      );
                    },
                    buttonText: "Reset Password",
                  ),
                  SizedBox(height: 14),
                  Center(
                    child: GenericTextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      buttonText: "Cancel",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
