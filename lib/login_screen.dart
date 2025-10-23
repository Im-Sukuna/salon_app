import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/forget_password.dart';
import 'package:salon_app/utils/generic_dialog.dart';
import 'package:salon_app/verification_screen.dart';
import 'package:salon_app/widget/generic_button.dart';
import 'package:salon_app/widget/generic_text_button.dart';

class LoginScreen extends StatefulWidget {
  final bool showDialogOnLoad;

  const LoginScreen({super.key, this.showDialogOnLoad = false});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.showDialogOnLoad) {
      Future.delayed(const Duration(milliseconds: 800), () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _showWelcomeDialog();
        });
      });
    }
  }

  void _showWelcomeDialog() {
    GenericDialog();
  }

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
                  SizedBox(height: 329),
                  Text(
                    "Login",
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        "Good to see you back!",
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(fontSize: 19),
                        ),
                      ),
                      SizedBox(width: 10.2),
                      SvgPicture.asset("assets/images/heart.svg"),
                    ],
                  ),
                  SizedBox(height: 17.08),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 15,
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
                  SizedBox(height: 13.7),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.fingerprint,
                          color: Colors.blue.shade200,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  GenericTextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ForgetPassword(),
                        ),
                      );
                    },
                    buttonText: "Forget Password",
                  ),
                  SizedBox(height: 46),
                  GenericButton(
                    onPressed: () {},
                    bgColor: Color(0xFF004CFF),
                    buttonText: "Login",
                  ),
                  Center(
                    child: GenericTextButton(
                      onPressed: () {},
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
