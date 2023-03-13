import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectCallContact extends StatelessWidget {
  const SelectCallContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,

        title:Text("Select contact"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width:10,),
          Icon(Icons.more_vert),
          SizedBox(width:10,),


        ],
      ),
      body: ListView.separated(itemBuilder: (context,index){
          if(index==0){

              return ListTile(

                title: Text("New call link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).secondaryHeaderColor,
                  child: Icon(Icons.link,color: Colors.white,),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed("create_call_link");
                },
              );
          }
          if(index==1){
            return ListTile(

              title: Text("New group link",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                child: Icon(Icons.group,color: Colors.white,),
              ),
              onTap: (){
                Navigator.of(context).pushNamed("new_chat_group");
              },
            );
          }if(index==2){
            return ListTile(

              title: Text("New contact",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                child: Icon(Icons.person_add,color: Colors.white,),
              ),
              trailing: Icon(Icons.qr_code),
            );
          }
          return ListTile(
            title: Text("Shafeel $index"),
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
            ),
            trailing: Container(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.call,color: Colors.teal,),
                  SizedBox(width: 20,),
                  Icon(Icons.video_call,color: Colors.teal,),
                  SizedBox(width: 10,),
                ],
              ),
            ),
          );
        }, separatorBuilder:  (context,index){
          return Divider();
        }, itemCount: 30),


    );
  }
}
