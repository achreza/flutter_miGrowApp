import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/register.dart';
import 'package:flutter_migrow/Widget/bottom_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 340,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(child: Image.asset("images/Kotakanmigrow.png")),
                  Positioned(
                    child: Image.asset("images/logoMiGrow.png"),
                    left: 20,
                    top: 65,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Login",
                style: GoogleFonts.getFont('Nunito',
                    fontSize: 32,
                    color: HexColor("#E98C23"),
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Login Menggunakan Email dan Password anda",
                  style: GoogleFonts.getFont(
                    'Nunito',
                    fontSize: 14,
                    color: HexColor("#A3A3A3"),
                  ),
                )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 50,
                width: 335,
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.getFont("Nunito"),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.getFont("Nunito"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: HexColor("#CACACA"),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: HexColor("#CACACA"),
                        width: 2,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 50,
                width: 335,
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.getFont("Nunito"),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.getFont("Nunito"),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: HexColor("#CACACA"),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: HexColor("#CACACA"),
                        width: 2,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 23, right: 23, top: 5, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        activeColor: HexColor("#E98C23"),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        "Ingat Saya",
                        style: GoogleFonts.getFont('Nunito', fontSize: 14),
                      )
                    ],
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Lupa Password?'),
                    textColor: HexColor('#E98C23'),
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNav()));},
                child: Container(
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Login",
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
                    ))),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    
                    width: 300,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Sign In with Google",
                        style: GoogleFonts.getFont('Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    )),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(HexColor("ffffff")),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: HexColor('CACACA'))
                    ))),
              ),
            ),
            Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
              ),
              onPressed: () {
                
              },
              child: GestureDetector(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
                child: Text(
                  'Belum Punya Akun? Daftar',
                  style: GoogleFonts.getFont('Nunito',fontSize: 14,fontWeight: FontWeight.w700,color: HexColor('E98C23'))
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
