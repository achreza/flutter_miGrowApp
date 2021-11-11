import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/login.dart';
import 'package:flutter_migrow/Screens/register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashContent());
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('E98C23'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    child: Image.asset(
                      "images/backgroundmigrow.png",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  child: Image.asset("images/logoMiGrow.png"),
                  left: 20,
                  top: 65,
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 21),
              child: Text(
                'Selamat Datang',
                style: GoogleFonts.getFont('Nunito',
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800),
              )),
          Container(
              margin: EdgeInsets.only(left: 21),
              child: Text(
                'Mari bekerja sama demi mengembangkan usaha mikro yang lebih berkembang.',
                style: GoogleFonts.getFont(
                  'Nunito',
                  color: Colors.white,
                  fontSize: 16,
                ),
              )),
          SizedBox(
            height: 32,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Container(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Login",
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: HexColor('E98C23')),
                    ),
                  )),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(HexColor("ffffff")),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ))),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: Container(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  )),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(HexColor("E98C23")),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: HexColor('ffffff'))))),
            ),
          ),
        ],
      ),
    );
  }
}
