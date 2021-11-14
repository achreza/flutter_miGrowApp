import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/detail_postingan.dart';
import 'package:flutter_migrow/models/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Postingan extends StatefulWidget {
  const Postingan({Key? key}) : super(key: key);

  @override
  _PostinganState createState() => _PostinganState();
}

class _PostinganState extends State<Postingan> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: postList.map((postingan) {
          return FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPostingan(
                            postingan: postingan,
                          )),
                );
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: FittedBox(
                                fit: BoxFit.fill, child: postingan.image),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Text(postingan.nama,
                                      style: GoogleFonts.getFont('Nunito',
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: HexColor('CCCCCC'),
                                      size: 12,
                                    ),
                                    Text(
                                      postingan.tempat,
                                      style: GoogleFonts.getFont('Nunito',
                                          color: HexColor('CCCCCC'),
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                width: 62,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: HexColor('0EAE00').withOpacity(0.3),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.arrow_upward,
                                      size: 14,
                                      color: HexColor('00A71B'),
                                    ),
                                    Text(
                                      postingan.persen,
                                      style: GoogleFonts.getFont('Nunito',
                                          color: HexColor('00A71B'),
                                          fontSize: 10),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  )
                ],
              ),
              
              );
        }).toList(),
      ),
    );
  }
}
