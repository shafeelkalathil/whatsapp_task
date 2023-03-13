import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Center(

            child: CircleAvatar(
              radius: 80,
         backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg")
            ,
              child: Padding(
                padding: const EdgeInsets.only(left: 120,top: 100),
                child: CircleAvatar(

                  backgroundColor: Theme.of(context).secondaryHeaderColor,
                  child: Icon(Icons.camera_alt,color: Colors.white,),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Expanded(

            child: Container(

              child: ListView.separated(itemBuilder: (context,index){
              //  listview 1st row
                if(index==0){
                  return ListTile(
                    title: Text("Shafeel_kalathil"),
                    subtitle: Text("This is not your username or pin.This name will be visible to your WhatsApp contacts"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.edit,color: Theme.of(context).secondaryHeaderColor,),
                  );
                }
              //  listview 2nd row
                if(index==1){
                  return ListTile(
                    title: Text("About"),
                    subtitle: Text("Busy"),
                    leading: Icon(Icons.info),
                    trailing: Icon(Icons.edit,color: Theme.of(context).secondaryHeaderColor,),
                  );
                }
              //  listview 3rd row
                if(index==2){
                  return ListTile(
                    title: Text("Phone"),
                    subtitle: Text("1234567890"),
                    leading: Icon(Icons.phone),
                  );
                }

              }, separatorBuilder: (context,index){
                return Divider();
              },
                  itemCount: 3),
            ),
          )
        ],
      ),
    );
  }
}
