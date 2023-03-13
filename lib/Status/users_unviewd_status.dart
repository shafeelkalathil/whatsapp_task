

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_task/chats/Chat/chat_profile.dart';

import '../chats/Chat/chat.dart';

class UsersUnviewedStatus extends StatefulWidget {
  final String username;
  UsersUnviewedStatus({Key? key, required this.username}) : super(key: key);

  @override
  State<UsersUnviewedStatus> createState() => _UsersUnviewedStatusState();
}

class _UsersUnviewedStatusState extends State<UsersUnviewedStatus> {
   String? checkName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(widget.username),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            child: Row(
              children: [
                Icon(Icons.more_vert),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            itemBuilder: (ctx) => [
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text(checkName=="Mute"?"Unmute":"Mute")
                  ],

                ),
                  onTap: () {
                    WidgetsBinding.instance!.addPostFrameCallback((_) {
                      showDialog(context: context,
                          builder: (ctx)=>AlertDialog(
                            title: Text("Mute Shafeel's status updates?"),
                            content: Text("New status updates from Shafeel won't appear under recent updates anymore."),
                            actions: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  }, child: Text("Cancel",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),)),
                              TextButton(onPressed: (){
                                checkName="Mute";
                                Navigator.of(context).pop();
                              }, child: Text(checkName=="Mute"?"Unmute":"Mute",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),))
                            ],
                          ));
                    });
                  }
              ),
              PopupMenuItem(
                value: 2,
                child: Row(
                  children: [
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text("Message")
                  ],
                ),
                onTap: (){
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Chat(name: widget.username);
                    }));
                  });
                },
              ),
              PopupMenuItem(
                value: 3,
                child: Row(
                  children: [
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text("Voice call")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 4,
                child: Row(
                  children: [
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text("Video call")
                  ],
                ),
              ),
              PopupMenuItem(
                value: 5,
                child: Row(
                  children: [
                    SizedBox(
                      // sized box with width 10
                      width: 10,
                    ),
                    Text("View contact")
                  ],
                ),


                onTap: (){
                  WidgetsBinding.instance!.addPostFrameCallback((_) {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return ChatProfile(name: "Shafeel Kalathil");
                    }));
                  });
                },
              ),
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 120,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Image(
                            image: NetworkImage(
                                "https://www.shutterstock.com/image-illustration/modern-illustration-linocut-style-surreal-260nw-1913052853.jpg"))),
                    Text(
                      "more to come",
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        showModalBottomSheet(

                            context: context,
                            builder: (ctx) => TextField(

                            ));
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ),
                          Text(
                            "Replay",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

        ],

      ),
    );
  }
}
