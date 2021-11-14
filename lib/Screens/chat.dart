import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/detail_chat.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("E98C23"),
        automaticallyImplyLeading: false,
        title: Text(
          'All Chats',
          style:
              GoogleFonts.getFont('Nunito',fontWeight: FontWeight.bold)
        ),
        actions: [],
        centerTitle: false,
        elevation: 4,
      ),
      backgroundColor: HexColor("ffffff"),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     // await Navigator.push(
      //     //   context,
      //     //   PageTransition(
      //     //     type: PageTransitionType.bottomToTop,
      //     //     duration: Duration(milliseconds: 250),
      //     //     reverseDuration: Duration(milliseconds: 250),
      //     //     child: MyFriendsWidget(),
      //     //   ),
      //     // );
      //   },
      //   backgroundColor: HexColor("E98C23"),
      //   elevation: 8,
      //   child: Icon(
      //     Icons.add_comment_rounded,
      //     color: HexColor("ffffff"),
      //     size: 30,
      //   ),
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailChat()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 12, top: 7),
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://pbs.twimg.com/media/Bbkm2uWCMAApIA8.jpg'),
                          
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 280,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Coklat deKonco",
                                  style: GoogleFonts.getFont('Nunito',fontWeight: FontWeight.bold,fontSize: 14)
                                ),
                                Text(
                                  "8:50 AM",
                                  style: GoogleFonts.getFont('Nunito',fontWeight: FontWeight.w500,fontSize: 14)
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 280,
                            child: Flexible(
                              child: Text(
                                "Apa Betul ini Dengan Coklat deKonco ?",
                                style: GoogleFonts.getFont('Nunito',fontWeight: FontWeight.w300,fontSize: 14)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            Divider()

            // Padding(
            //   padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
            //   child: StreamBuilder<List<ChatsRecord>>(
            //     stream: queryChatsRecord(
            //       queryBuilder: (chatsRecord) => chatsRecord
            //           .where('users', arrayContains: currentUserReference)
            //           .orderBy('last_message_time', descending: true),
            //     ),
            //     builder: (context, snapshot) {
            //       // Customize what your widget looks like when it's loading.
            //       if (!snapshot.hasData) {
            //         return Center(
            //           child: SizedBox(
            //             width: 50,
            //             height: 50,
            //             child: CircularProgressIndicator(
            //               color: FlutterFlowTheme.primaryColor,
            //             ),
            //           ),
            //         );
            //       }
            //       List<ChatsRecord> listViewChatsRecordList = snapshot.data;
            //       if (listViewChatsRecordList.isEmpty) {
            //         return Image.asset(
            //           'assets/images/chatsEmpty.png',
            //           width: MediaQuery.of(context).size.width,
            //           height: 450,
            //         );
            //       }
            //       return InkWell(
            //         onTap: () async {
            //           await Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => ChatDetailsWidget(),
            //             ),
            //           );
            //         },
            //         child: ListView.builder(
            //           padding: EdgeInsets.zero,
            //           shrinkWrap: true,
            //           scrollDirection: Axis.vertical,
            //           itemCount: listViewChatsRecordList.length,
            //           itemBuilder: (context, listViewIndex) {
            //             final listViewChatsRecord =
            //                 listViewChatsRecordList[listViewIndex];
            //             return FutureBuilder<UsersRecord>(
            //               future: () async {
            //                 final chatUserRef = FFChatManager.instance
            //                     .getChatUserRef(currentUserReference,
            //                         listViewChatsRecord);
            //                 return UsersRecord.getDocument(chatUserRef)
            //                     .first;
            //               }(),
            //               builder: (context, snapshot) {
            //                 final chatUser = snapshot.data;
            //                 return FFChatPreview(
            //                   onTap: chatUser != null
            //                       ? () => Navigator.push(
            //                             context,
            //                             MaterialPageRoute(
            //                               builder: (context) =>
            //                                   ChatDetailsWidget(
            //                                 chatUser: chatUser,
            //                               ),
            //                             ),
            //                           )
            //                       : null,
            //                   lastChatText: listViewChatsRecord.lastMessage,
            //                   lastChatTime:
            //                       listViewChatsRecord.lastMessageTime,
            //                   seen: listViewChatsRecord.lastMessageSeenBy
            //                       .contains(currentUserReference),
            //                   userName: chatUser?.displayName ?? '',
            //                   userProfilePic: chatUser?.photoUrl ?? '',
            //                   color: FlutterFlowTheme.dark900,
            //                   unreadColor: FlutterFlowTheme.tertiary,
            //                   titleTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.tertiaryColor,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 14,
            //                   ),
            //                   dateTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.grayIcon,
            //                     fontWeight: FontWeight.normal,
            //                     fontSize: 14,
            //                   ),
            //                   previewTextStyle: GoogleFonts.getFont(
            //                     'Lexend Deca',
            //                     color: FlutterFlowTheme.grayIcon,
            //                     fontWeight: FontWeight.normal,
            //                     fontSize: 14,
            //                   ),
            //                   contentPadding:
            //                       EdgeInsetsDirectional.fromSTEB(
            //                           8, 3, 8, 3),
            //                   borderRadius: BorderRadius.circular(0),
            //                 );
            //               },
            //             );
            //           },
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
