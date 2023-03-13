import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_profile.dart';
import 'disappearing_message.dart';
import 'media_doc_links/media_doc_link.dart';

class Chat extends StatefulWidget {
  final String name;

  Chat({Key? key, required this.name}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String? options;
  TextEditingController _textController = TextEditingController();
  bool? isChecked=false;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Image(
          image: AssetImage("assets/chat_background.png"),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ChatProfile(
                          name: "Shafeel Kalathil ",
                        );
                      }));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(widget.name),
                  ),
                ],
              ),
            ),
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            //appbar icons
            actions: <Widget>[
              SizedBox(
                width: 10,
              ),
              Icon(Icons.video_call),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.call),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                child: Row(
                  children: [
                    Icon(Icons.more_vert),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                      onTap: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return ChatProfile(name: "Shafeel ");
                          }));
                        });
                      },
                      value: 1,
                      child: Text("View contact")),
                  PopupMenuItem(
                      onTap: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MediaDocLink();
                          }));
                        });
                      },
                      value: 2,
                      child: Text("Media,links,and docs")),
                  PopupMenuItem(value: 3, child: Text("Search")),
                  PopupMenuItem(
                      onTap: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          showDialog(
                              context: context,
                              builder: (ctx) => StatefulBuilder(
                                    builder: (context, setState) => AlertDialog(
                                      title: Text('Mute notifications'),
                                      content: Text(
                                        "Other participants will not see that you muted this chat.You will still be notified if you are mentioned",
                                        style: TextStyle(color: Colors.black38),
                                      ),
                                      actions: [
                                        RadioListTile(
                                            activeColor: Colors.teal,
                                            title: Text("8 hours"),
                                            value: "8 hours",
                                            groupValue: options,
                                            onChanged: (value) {
                                              setState(() {
                                                options = value.toString();
                                              });
                                            }),
                                        RadioListTile(
                                            activeColor: Colors.teal,
                                            title: Text("1 week"),
                                            value: "1 week",
                                            groupValue: options,
                                            onChanged: (value) {
                                              setState(() {
                                                options = value.toString();
                                              });
                                            }),
                                        RadioListTile(
                                            activeColor: Colors.teal,
                                            title: Text("Always"),
                                            value: "Always",
                                            groupValue: options,
                                            onChanged: (value) {
                                              setState(() {
                                                options = value.toString();
                                              });
                                            }),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  "Cancel",
                                                  style: TextStyle(
                                                      color: Colors.teal),
                                                )),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("OK",
                                                    style: TextStyle(
                                                        color: Colors.teal)))
                                          ],
                                        )
                                      ],
                                    ),
                                  ));
                        });
                      },
                      value: 4,
                      child: Text("Mute notifications")),
                  PopupMenuItem(
                      onTap: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return DisappearingMessages();
                          }));
                        });
                      },
                      value: 5,
                      child: Text("Disappearing messages")),
                  PopupMenuItem(value: 6, child: Text("Wallpaper")),
                  PopupMenuItem(
                      onTap: () {
                        WidgetsBinding.instance!.addPostFrameCallback((_) {
                          showMenu(
                              context: context,
                              position: RelativeRect.fromLTRB(100, 10, 0, 0),
                              items: <PopupMenuEntry>[
                                PopupMenuItem(
                                  child: Text('Report'),
                                  onTap: () {
                                    WidgetsBinding.instance!
                                        .addPostFrameCallback((_) {
                                          showDialog(context: context,
                                              builder: (ctx)=>
                                          StatefulBuilder(builder: (context,setState)=>AlertDialog(
                                            title: Text("Report Shafeel?"),
                                            content: Text("The last 5 messages from this contact will be forwarded to WhatsApp.If you block this contact and delete the chat, messages will only be removed fro  this device and your devices on the newer version of WhatsApp."),
                                            contentTextStyle: TextStyle(color: Colors.black38,fontSize: 15),
                                            actions: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 16),
                                                    child: Text("This contact will not be notified",style: TextStyle(color: Colors.black38),),
                                                  ),
                                                  SizedBox(height: 10,),
                                                  Row(
                                                    children: [
                                                      Checkbox(

                                                        activeColor: Colors.teal,
                                                          value: isChecked,
                                                          onChanged: (newBool){
                                                            setState(() {
                                                              isChecked=newBool;
                                                            });
                                                          }),
                                                      Text("Block contact and delete chat",style: TextStyle(color: Colors.black38),)
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      TextButton(onPressed: (){
                                                        Navigator.of(context).pop();
                                                      }, child: Text("Cancel",style: TextStyle(color: Colors.teal),)),
                                                      TextButton(onPressed: (){
                                                        Navigator.of(context).pop();
                                                      }, child: Text("Report",style: TextStyle(color: Colors.teal)))
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],

                                          )));
                                    });
                                    // Handle submenu item 1 tap
                                  },
                                ),
                                PopupMenuItem(
                                  child: Text('Block'),
                                 
                                ),
                                PopupMenuItem(
                                  child: Text('Clear chat'),
                                  onTap: () {
                                    // Handle submenu item 1 tap
                                  },
                                ),
                                PopupMenuItem(
                                  child: Text('Export chat'),
                                  onTap: () {
                                    // Handle submenu item 1 tap
                                  },
                                ),
                                PopupMenuItem(
                                  child: Text('Add shortcut'),
                                  onTap: () {
                                    // Handle submenu item 1 tap
                                  },
                                ),
                              ]);
                        });
                      },
                      value: 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("More"),
                          Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                // ListView(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width - 55,
                          child: Card(
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: TextFormField(
                                controller: _textController,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 10,
                                minLines: 1,
                                onChanged: (value) {
                                  setState(() {
                                    _textController.text == '';
                                  });
                                },
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Message",
                                    contentPadding: EdgeInsets.all(5),
                                    prefixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.emoji_emotions,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  // UDE : SizedBox instead of Container for whitespaces
                                                  return Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height /
                                                            3,
                                                    child: Card(
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .deepPurple,
                                                                    child: Icon(
                                                                      Icons
                                                                          .description,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Document"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .red,
                                                                    child: Icon(
                                                                      Icons
                                                                          .camera_alt,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Camera"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .purple,
                                                                    child: Icon(
                                                                      Icons
                                                                          .image,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Gallery"),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .orangeAccent,
                                                                    child: Icon(
                                                                      Icons
                                                                          .headphones,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text("Audio"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .green,
                                                                    child: Icon(
                                                                      Icons
                                                                          .location_on,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Location"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .teal,
                                                                    child: Icon(
                                                                      Icons
                                                                          .currency_rupee,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Payment"),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .blue,
                                                                    child: Icon(
                                                                      Icons
                                                                          .person_2,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text(
                                                                      "Contact"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  CircleAvatar(
                                                                    radius: 25,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .teal,
                                                                    child: Icon(
                                                                      Icons
                                                                          .equalizer,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,
                                                                  ),
                                                                  Text("Poll"),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                      "       ")
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            icon: Icon(
                                              Icons.attach_file,
                                              color: Colors.black38,
                                            )),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.currency_rupee_rounded,
                                                color: Colors.black38)),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed("camera");
                                            },
                                            icon: Icon(Icons.camera_alt,
                                                color: Colors.black38)),
                                      ],
                                    )),
                              ))),

                      //mic

                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Theme.of(context).secondaryHeaderColor,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            _textController.text == '' ? Icons.mic : Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
