import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatProfile extends StatelessWidget {
  const ChatProfile({Key? key,required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //1st container
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/3+50,

                    child: Card(
                         margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(onPressed: (){
                                Navigator.of(context).pop();
                              }, icon: Icon(Icons.arrow_back)),
                              CircleAvatar(
                                radius: 70,
                                backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
                              ),
                              PopupMenuButton(
                                child: Icon(Icons.more_vert),
                                  itemBuilder:(context)=>[
                                    PopupMenuItem(
                                      value: 1,
                                        child: Text("Share")),
                                    PopupMenuItem(
                                        value: 2,
                                        child: Text("Edit")),
                                    PopupMenuItem(
                                        value: 3,
                                        child: Text("View in address book")),
                                    PopupMenuItem(
                                        value: 4,
                                        child: Text("Verify security code"))
                                  ] ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Text(name,style: TextStyle(fontSize: 25),),
                          SizedBox(height: 10,),
                          Text("+91 9876543210 ",style: TextStyle(fontSize: 18,color: Colors.black38),),
                          SizedBox(height: 50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                            children: [
                              Column(
                                children: [
                                  Icon(Icons.call,color: Theme.of(context).secondaryHeaderColor,size: 30),
                                  SizedBox(height: 8,),
                                  Text("Audio")
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.video_call,color: Theme.of(context).secondaryHeaderColor,size: 30),
                                  SizedBox(height: 8,),
                                  Text("Video")
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.currency_rupee,color: Theme.of(context).secondaryHeaderColor,size: 30),
                                  SizedBox(height: 8,),
                                  Text("Pay")
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.search,color: Theme.of(context).secondaryHeaderColor,size: 30),
                                  SizedBox(height: 8,),
                                  Text("Search")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/14,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(

                            children: [

                              Text("  Busy  ",style: TextStyle(fontSize: 16),),

                              Icon(Icons.auto_fix_normal,color: Colors.yellow,)
                            ],
                          ),
                          Text("  21 September 2021")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                        margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                             ListTile(
                               title: Text("Mute notifications"),
                               leading: Icon(Icons.notifications),
                               trailing: Icon(Icons.toggle_off),
                             ),
                          ListTile(
                            title: Text("Custom notification"),
                            leading: Icon(Icons.music_note),
                          ),
                          ListTile(
                            title: Text("Media visibility"),
                            leading: Icon(Icons.perm_media),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("Encryption"),
                            subtitle: Text("Messages and calls are end-to-end encrypted.Tap to verify"),
                            leading: Icon(Icons.lock),
                          ),
                          ListTile(
                            title: Text("Disappearing messages"),
                            subtitle: Text("Off"),
                            leading: Icon(Icons.av_timer),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/2-80,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("4 Groups in common",style: TextStyle(color: Colors.black38,fontSize: 14,fontWeight: FontWeight.bold),),
                          ListTile(
                            title: Text("Create a group with shafeel"),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.teal,
                              child: Icon(Icons.group,color: Colors.white,),
                            ),
                          ),
                          ListTile(
                            title: Text("Team A"),
                            subtitle: Text("afsl,ajmal,ammer,jasi,muthu,sabi,fyz,kala,mannan,l.."),
                            leading: CircleAvatar(
                              radius: 20,
                             backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSONQTj9WncRNbReT4Xb7HICGqf8RTXTcqhSQ&usqp=CAU"),
                            ),
                          ),
                          ListTile(
                            title: Text("Team B"),
                            subtitle: Text("afsl,ajmal,ammer,jasi,muthu,sabi,fyz,kala,mannan,l.."),
                            leading: CircleAvatar(
                              radius: 20,

                             backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBfPwALqVbwTC4CYaSR5EvoTvN6-_4AuI5J8Hf9Ykqa0AHY75mSPBuwCnXxxH5XWkmwBA&usqp=CAU"),
                            ),
                          ),
                          ListTile(
                            title: Text("Team c"),
                            subtitle: Text("afsl,ajmal,ammer,jasi,muthu,sabi,fyz,kala,mannan,l.."),
                            leading: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-DoyEZc5DUmxkpujgj7-9QdaLkc9Qgz8Flg2YKfzEfs1wOKgU6Y_1h-bMPvxG_ty8to8&usqp=CAU"),
                            ),
                          ),ListTile(
                            title: Text("Team D"),
                            subtitle: Text("afsl,ajmal,ammer,jasi,muthu,sabi,fyz,kala,mannan,l.."),
                            leading: CircleAvatar(
                              radius: 20,
                             backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU"),
                            ),
                          )
                        ],
                      ),
                    ),

                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height/8,
                    width: MediaQuery.of(context).size.width,

                    child: Card(
                      margin: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          ListTile(
                               title: Text("Block Shafeel ",style: TextStyle(color: Colors.red),),
                            leading: Icon(Icons.block,color: Colors.red,),
                          ),
                          ListTile(
                            title: Text("Report Shafeel ",style: TextStyle(color: Colors.red),),
                            leading: Icon(Icons.thumb_down,color: Colors.red,),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 60,)

                ],
              ),
            ),
          ),
    );
  }
}
