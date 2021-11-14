import 'package:flutter/material.dart';
import 'package:flutter_migrow/Widget/favorite_button.dart';
import 'package:flutter_migrow/models/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailPostingan extends StatelessWidget {
  PostModel postingan;
  DetailPostingan({Key? key, required this.postingan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      children: <Widget>[
                        Container(
                            height: 220,
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: FittedBox(
                                fit: BoxFit.none, child: postingan.image)),
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
                              FavoriteButton(),
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
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.all(20),
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
                        padding:
                            EdgeInsets.only(left: 20, bottom: 16, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                postingan.nama,
                                style: GoogleFonts.getFont('Nunito',
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: HexColor('CCCCCC'),
                                  size: 12,
                                ),
                                Text(
                                  postingan.tempat,
                                  style: GoogleFonts.getFont('Nunito',
                                      color: HexColor('CCCCCC'), fontSize: 10),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.list,
                                  size: 16,
                                  color: HexColor('AEAEAE'),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  postingan.kategori,
                                  style: GoogleFonts.getFont('Nunito',
                                      fontSize: 12, color: HexColor('AEAEAE')),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  size: 16,
                                  color: HexColor('AEAEAE'),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Berdiri sejak ' + postingan.tanggal,
                                  style: GoogleFonts.getFont('Nunito',
                                      fontSize: 12, color: HexColor('AEAEAE')),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.arrow_upward,
                                  size: 16,
                                  color: HexColor('AEAEAE'),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Profit Tinggi',
                                  style: GoogleFonts.getFont('Nunito',
                                      fontSize: 12, color: HexColor('AEAEAE')),
                                ),
                              ],
                            ),
                            Divider(),
                            Text(
                              'Deskripsi',
                              style: GoogleFonts.getFont('Nunito',
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Expanded(
                                    child: Text(postingan.deskripsi,
                                        style: GoogleFonts.getFont(
                                          'Nunito',
                                          fontSize: 10,
                                        ))))
                          ],
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 6),
                      child: Text(
                        'Galeri Produk',
                        style: GoogleFonts.getFont('Nunito',
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 6,right: 20),
                      height: 120,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: postingan.imageUrls.map((url) {
                          return Padding(
                            padding: EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: Image.network(
                                url,
                              ),
                            ),
                          );
                        }).toList(),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 18),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                          },
                          child: Container(
                              width: 90,
                              height: 38,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.share_sharp,
                                      color: HexColor('E98C23'),
                                      size: 20,
                                    ),
                                    Text(
                                      "Share",
                                      style: GoogleFonts.getFont('Nunito',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('E98C23')),
                                    ),
                                  ],
                                ),
                              )),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor("ffffff")),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(
                                          color: HexColor('E98C23'))))),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const LoginPage()),
                            // );
                          },
                          child: Container(
                              width: 190,
                              height: 38,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.payment_outlined,
                                      color: HexColor('ffffff'),
                                      size: 20,
                                    ),
                                    Text(
                                      "Investasi",
                                      style: GoogleFonts.getFont('Nunito',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor('ffffff')),
                                    ),
                                  ],
                                ),
                              )),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  HexColor("E98C23")),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      side: BorderSide(
                                          color: HexColor('E98C23'))))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
