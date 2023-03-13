import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_task/Status/users_unviewd_status.dart';
import 'package:whatsapp_task/Status/users_viewed_status.dart';
import 'package:whatsapp_task/Status/userunviewed_video_status.dart';

class Status extends StatelessWidget {
  Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        //bottom right floating action button
        floatingActionButton: Container(
          height: 150,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  Navigator.of(context).pushNamed("type_status");
                },
                child: Icon(Icons.edit,),
                backgroundColor: Theme.of(context).secondaryHeaderColor,

              ),
              SizedBox(height: 10,),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {

                    Navigator.of(context).pushNamed("camera");

                },
                child: Icon(Icons.camera_enhance),
                backgroundColor: Theme.of(context).secondaryHeaderColor,
              ),


            ],
          ),
        ),


        //Status Listview
        body:ListView.separated(
          physics: BouncingScrollPhysics(),
            itemBuilder: (context,index){
          //My status
          if(index==0){
            return ListTile(
              title:Text("My status") ,
              subtitle: Text("Tap to add status update"),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
                child: Padding(
                    padding: const EdgeInsets.only(left: 39, top: 32),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          "https://image.pngaaa.com/121/5689121-middle.png"),
                    )),
              ),
              onTap: (){
                Navigator.of(context).pushNamed("camera");
              },
            );
          }
          //Recet updates text
          if(index==1){
            return Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Recent Updates",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45),),
            );
          }
        //  unviewed video status
          if(index==2){
            return ListTile(
              title: Text("Shafeel $index"),
              subtitle: Text("Today $index minutes ago"),
              leading: CircleAvatar(
                radius: 30,

                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
                ),
              ),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return UserUnviewedVideoStatus(username: "Shafeel $index");
                }));
              },
            );
          }
        //  unviewed status
          if(index<=10){
            return ListTile(
              title: Text("Shafeel $index"),
              subtitle: Text("Today $index minutes ago"),
              leading: CircleAvatar(
                radius: 30,

                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
                ),
              ),
              onTap: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return UsersUnviewedStatus(username: "Shafeel $index");
                }));
              },
            );
          }
          if(index==11){
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Viewed updates",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black45),),
            );
          }
        //  viewed status
        return  ListTile(
          title: Text("shafeel $index"),
          subtitle: Text("Yesterday $index:00 PM"),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
          ),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return UsersViewedStatus(username: "Shafeel $index",);
            }));
          },
        );
        },
            separatorBuilder:(context,index){
          return Divider(color: Colors.white,);
            } ,
            itemCount: 30)
    );
  }
}
