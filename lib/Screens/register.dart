import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/login.dart';
import 'package:flutter_migrow/services/auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 330,
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
                "Sign Up",
                style: GoogleFonts.getFont('Nunito',
                    fontSize: 32,
                    color: HexColor("#E98C23"),
                    fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Isi kolom dibawah untuk membuat akun baru.",
                  style: GoogleFonts.getFont(
                    'Nunito',
                    fontSize: 14,
                    color: HexColor("#A3A3A3"),
                  ),
                )),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                height: 40,
                width: 335,
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: GoogleFonts.getFont("Nunito"),
                    hintText: 'Usernma',
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
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 40,
                width: 335,
                child: TextFormField(
                  controller: emailController,
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
                height: 40,
                width: 335,
                child: TextFormField(
                  controller: passwordController,
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
              padding:
                  const EdgeInsets.only(left: 23, right: 23, top: 5, bottom: 0),
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
                onPressed: () async {
                  await authService.createUserWithEmailAndPassword(
                      emailController.text, passwordController.text);
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
              height: 8,
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
                            side: BorderSide(color: HexColor('CACACA'))))),
              ),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {},
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text('Sudah punya Akun? Login',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: HexColor('E98C23'))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
