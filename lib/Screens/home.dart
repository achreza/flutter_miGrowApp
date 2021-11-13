import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/postingan.dart';
import 'package:flutter_migrow/Widget/app_bar.dart';
import 'package:flutter_migrow/Widget/drawer_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          title: Text(
            'miGrow',
            style: GoogleFonts.getFont('Nunito',
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      HexColor('F4BC1A'),
                      HexColor('E98C23'),
                    ])),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, top: 24),
                child: Text(
                  'Kategori',
                  style: GoogleFonts.getFont('Nunito',
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 12),
              height: 32.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    margin: EdgeInsets.only(right: 8),
                    height: 32.0,
                    child: Center(
                        child: Text(
                      'Semua',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14, color: HexColor('D17104')),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor('F0A81E').withOpacity(0.3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    margin: EdgeInsets.only(right: 8),
                    height: 32.0,
                    child: Center(
                        child: Text(
                      'Makanan',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14, color: HexColor('D17104')),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor('F0A81E').withOpacity(0.3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    margin: EdgeInsets.only(right: 8),
                    height: 32.0,
                    child: Center(
                        child: Text(
                      'Furnitur',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14, color: HexColor('D17104')),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor('F0A81E').withOpacity(0.3)),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    margin: EdgeInsets.only(right: 8),
                    height: 32.0,
                    child: Center(
                        child: Text(
                      'Kerajinan',
                      style: GoogleFonts.getFont('Nunito',
                          fontSize: 14, color: HexColor('D17104')),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: HexColor('F0A81E').withOpacity(0.3)),
                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 20,left: 20,right: 20),height: 490,child: Postingan())
          ],
        ),
      ),
    );
  }
}
