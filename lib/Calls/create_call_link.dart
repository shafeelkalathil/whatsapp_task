import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateCallLink extends StatelessWidget {
  const CreateCallLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Create call link"),
          backgroundColor: Theme.of(context).secondaryHeaderColor,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              //main colum subtitle
              if (index == 0) {
                return ListTile(
                  subtitle: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                          "Anyone with WhatsApp can use this link to join this call"),
                      Text("Only share it with people you trust"),
                    ],
                  ),
                );
              }
              //link row
              if(index==1){
                return ListTile(
                  title: Text("https://call.whatsapp.com/video/XurFTwj8mMxTr6onnsNlPF",style: TextStyle(color: Colors.blue)),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).secondaryHeaderColor,
                    child: Icon(Icons.video_call,color: Colors.white,size: 28,),
                  )

                );
              }
            //  Call type
              if(index==2){
                return ListTile(
                  title: Text("Call type"),
                  subtitle: Text("Video"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                  ),
                );
              }
            //  send link
              if(index==3){
                return ListTile(
                  title: Text("Send link via WhatsApp"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(Icons.send,color: Colors.black26,),
                  ),
                );
              }
            //  copy link
              if(index==4){
                return ListTile(
                  title: Text("Copy link"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(Icons.content_copy,color: Colors.black26,),
                  ),
                );
              }
            //  Share link
              if(index==5){
                return ListTile(
                  title: Text("Share link"),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Icon(Icons.share,color: Colors.black26,),
                  ),
                );
              }
            },
            separatorBuilder: (context, index) {
                if(index>=3||index==0||index==1){
                  return Divider(color: Colors.white12,);
                }
                return Divider();
            },
            itemCount: 6));
  }
}
