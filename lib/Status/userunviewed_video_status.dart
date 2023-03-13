import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../chats/Chat/chat.dart';
import '../chats/Chat/chat_profile.dart';

class UserUnviewedVideoStatus extends StatefulWidget {
  String username;
   UserUnviewedVideoStatus({Key? key,required this.username}) : super(key: key);

  @override
  State<UserUnviewedVideoStatus> createState() => _UserUnviewedVideoStatusState();
}

class _UserUnviewedVideoStatusState extends State<UserUnviewedVideoStatus> {
   String? checkName;
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  @override
  void initState() {
    // TODO: implement initState
    _controller=VideoPlayerController.network("https://library.animatron.io/templates/22b65d60ab48129ecd7fd353/instagram_story_hd720.mp4");
    _initializeVideoPlayerFuture=_controller.initialize();
   setState(() {
     _controller.play();
     _controller.setVolume(20);
   });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
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
                      _controller=_controller;
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      if(_controller.value.isPlaying){
                        _controller.pause();
                      }else{
                        _controller.play();
                      }

                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height-260,
                    child: FutureBuilder(
                      future: _initializeVideoPlayerFuture,
                      builder: (context,snapshot){
                        if(snapshot.connectionState==ConnectionState.done){
                          return AspectRatio(
                              aspectRatio:_controller.value.aspectRatio,
                            child: VideoPlayer(
                              _controller
                            ),
                          );
                        }else{
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ),
              Text("Lets Go..",style: TextStyle(color: Colors.white,fontSize: 16),),
              InkWell(
                onTap: (){
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

        ],

      ),
    
    );
  }
}
