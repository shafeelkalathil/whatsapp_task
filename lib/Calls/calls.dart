import 'package:flutter/material.dart';
import 'package:whatsapp_task/Calls/call_info.dart';
import 'package:whatsapp_task/Calls/select_call_contact.dart';

class Calls extends StatelessWidget{
  Calls({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
     floatingActionButton: Container(
       height: 80,
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           FloatingActionButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SelectCallContact();
              }));
           },child: Icon(Icons.add_call),backgroundColor: Theme.of(context).secondaryHeaderColor,)
         ],
       )
     ),
      //Calls body
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context,index){
        if(index==0){
          //Create call link
          return ListTile(
            title: Text("Create call link"),
            subtitle: Text("Share a link for your WhatsApp call"),
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 25,
              child: Icon(Icons.link,color: Colors.white,),
            ),
            onTap: (){
              Navigator.of(context).pushNamed("create_call_link");
            },
          );
        }
        //Recent
        if(index==1){
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Recent",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black45),),
          );
        }
        //videocall recent
        if(index==4||index==5 ||index==8||index==12||index==28){
          return ListTile(
            title: Text("Shafeel $index"),
            subtitle: Text("${1+index} February $index:00 Pm"),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
            ),
            trailing: Icon(Icons.video_call,color: Colors.teal,),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return CallInfo(callername: "Shafeel $index",callerdate:"${1+index} February " ,callertime:"$index:00 Pm");
              }));
            },
          );

        }
        return ListTile(
          title: Text("Shafeel $index"),
          subtitle: Text("${1+index} February $index:00 Pm"),
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
          ),
          trailing: Icon(Icons.call,color: Colors.teal,),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return CallInfo(callername: "Shafeel $index",callerdate:"${1+index} February " ,callertime:"$index:00 Pm" ,);
            }));
          },
        );
      },
          separatorBuilder:  (context,index){
        return Divider(color: Colors.white,);
          },
          itemCount: 30),
    );
  }
}