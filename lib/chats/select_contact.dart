import 'package:flutter/material.dart';

import 'Chat/chat.dart';

class SelectChatContact extends StatelessWidget{
  SelectChatContact({Key?key}):super(key: key);
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Select contact"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,

        actions: <Widget>[

          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.more_vert),
         SizedBox(width: 10,)
        ],
      ),
     body:SafeArea(

         child: ListView.separated(itemBuilder: (context,index){
            // New group
            if(index==0){
             return ListTile(
                title: Text("New group"),

                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).secondaryHeaderColor,

                  child: Icon(Icons.group,color: Colors.white),

                ),
               onTap: (){
                  Navigator.of(context).pushNamed("new_chat_group");
               },
              );

            }
           // New contact
           if(index==1){
             return ListTile(

               title: Text("New contact"),
               leading: CircleAvatar(
                 backgroundColor: Theme.of(context).secondaryHeaderColor,
                   child: Icon(Icons.person_add,color: Colors.white,),
                   ),
               trailing:CircleAvatar(
                 backgroundColor: Colors.white,
               child: Icon(Icons.qr_code,color: Colors.black45,),

               ) ,
             );
           }
            //New community
            if(index==2){
              return ListTile(

                title: Text("New community"),
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).secondaryHeaderColor,
                child: Icon(Icons.groups,color: Colors.white,),
                ),
                onTap: (){
                  Navigator.of(context).pushNamed("new_community");
                },
              );
            }
         //   heading
           if(index==3){
             return Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Text("Contacts on WhatsApp",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
             );
           }
         //  contacts
           return ListTile(
             title: Text("Shafeel $index",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
             subtitle: Text("Busy"),
             leading: CircleAvatar(

                 radius: 25,
                 backgroundImage: NetworkImage(
                     "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),

             ),
             onTap: (){
               Navigator.of(context)
                   .push(MaterialPageRoute(builder: (cntxt) {
                 return Chat(name: "Shafeel $index");
               }));
             },
           );
         },
             separatorBuilder: (context,index){
               return Divider(color: Colors.white12,);
             },
             itemCount: 30),


     )

    );
  }
}