import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salon_app/verification_screen.dart';
import 'package:salon_app/login_screen.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  bool _isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "assets/images/create_account.svg",
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/images/create_account_two.svg",
                fit: BoxFit.contain,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 91),
                    Text(
                      "Create""\nAccount",
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF202020),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    _buildTextField("Business Name"),
                    _buildTextField("Business Address"),
                    _buildTextField("Business Phone Number"),
                    _buildTextField("Email"),
                    _buildTextField("Contact Name"),
                    _buildTextField("Contact Number"),
                    _buildTextField("Password", isPassword: true),

                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 56),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "I already have an account",
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginScreen(),),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              backgroundColor: Color(0xFF004CFF),
                            ),
                            child: Icon(Icons.arrow_forward, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 47),
                    Padding(
                      padding: const EdgeInsets.only(left: 37, right: 38),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VerificationScreen()),
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
                          "Next",
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
                    SizedBox(height: 115),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }

  Widget _buildTextField(String label, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 7.0),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Color(0xFF202020),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          filled: true,
          fillColor: Colors.grey.shade100,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 19,
          ),
          suffixIcon: isPassword
              ? IconButton(
            icon: Icon(
              _isPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(59),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
