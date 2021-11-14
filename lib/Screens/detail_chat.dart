import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/chat_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hexcolor/hexcolor.dart';

class DetailChat extends StatefulWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: HexColor("E98C23"),
            automaticallyImplyLeading: false,
            leading: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 24,
              ),
            ),
            title: Text(
              
              "Coklat deKonco",
              style: GoogleFonts.getFont('Nunito')
            ),
            flexibleSpace: Text('tes',style: GoogleFonts.getFont('Nunito',color: Colors.white),),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                child: InkWell(
                  onTap: () async {},
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              )
            ],
            centerTitle: true,
            elevation: 3,
          ),
          body: ChatPageDetail()),
    );
  }
}
