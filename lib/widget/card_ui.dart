import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_app/create_account.dart';
import 'package:salon_app/login_screen.dart';

class CardUi extends StatelessWidget {
  const CardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 24, top: 81, bottom: 117),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/Image.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Hello",
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 41,
                  //vertical: 71,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                  "\nSed non consectetur turpis. Morbi eu eleifend lacus.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(fontSize: 19),
                  ),
                ),
              ),
              SizedBox(height: 71),
            ],
          ),
        ),
      ),
    );
  }
}

class CardTwo extends StatelessWidget {
  const CardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 24, top: 81, bottom: 117),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/Placeholder_01.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Ready?",
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 41,
                  //vertical: 71,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(fontSize: 19),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateAccount()),
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
                  "Get Started",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 13),
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
                          MaterialPageRoute(builder: (context) => LoginScreen()),
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
              SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
