import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/login.dart';
import 'package:flutter_migrow/Widget/bottom_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final BottomNav logout = new BottomNav();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 120,
                          width: double.infinity,
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child:
                                  Image.asset('images/backgroundmigrow.png'))),
                      SafeArea(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  size: 30,
                                  color: HexColor('ffffff'),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                }),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 170,
                              padding: EdgeInsets.fromLTRB(
                                  40, 190, 1, 1), //top 210 - 40
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 150),
                          width: 110,
                          height: 110,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://media-exp1.licdn.com/dms/image/C5603AQHHTXJW70O2_A/profile-displayphoto-shrink_800_800/0/1633184412814?e=1642636800&v=beta&t=ZwF3CsKIvEhiK4B-3qNdWEPUn9xnS8KYW9UFRMZjER0'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text(
                      'Achmad Fahreza',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: HexColor('E98C23')),
                    )),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      Text(
                        'Silver Investor',
                        style: GoogleFonts.getFont('Nunito', fontSize: 14),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  height: 68,
                  width: 335,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: Column(
                          children: [
                            Text(
                              '47',
                              style: GoogleFonts.getFont('Nunito',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('E98C23')),
                            ),
                            Text('Followers',
                                style: GoogleFonts.getFont(
                                  'Nunito',
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12, bottom: 12),
                        child: VerticalDivider(
                          thickness: 2,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6),
                        child: Column(
                          children: [
                            Text(
                              '12',
                              style: GoogleFonts.getFont('Nunito',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor('E98C23')),
                            ),
                            Text('Investment',
                                style: GoogleFonts.getFont(
                                  'Nunito',
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 335,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 16),
                      padding: EdgeInsets.only(left: 20, bottom: 16, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'My Profile',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.insights,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Insights',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.payment,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Payment History',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.people,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Relations',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    width: 335,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.only(left: 20, bottom: 16, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Settings',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            height: 17,
                            child: FlatButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.help,
                                    size: 16,
                                    color: HexColor('1C1C1C'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Help',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('1C1C1C')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Divider(),
                          Container(
                            
                            height: 17,
                            child: FlatButton(
                              
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    size: 16,
                                    color: HexColor('FF0000'),
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    'Log Out',
                                    style: GoogleFonts.getFont('Nunito',
                                        fontSize: 14, color: HexColor('FF0000')),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
