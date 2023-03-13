import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.separated(itemBuilder: (context,index){
                //first row
                if(index==0){
                  return ListTile(
                    title: Text('Shafeel_Kalathil',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text("Busy"),
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage("https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg",)
                    ),
                    trailing: CircleAvatar(
                      backgroundColor:Colors.white24 ,
                      child: Icon(Icons.qr_code,color: Colors.teal,size: 30,),
                    ),
                    onTap: (){
                      Navigator.of(context).pushNamed("profile");
                    },
                  );
                }
              //  second row
                if(index==1){
                  return ListTile(
                    title: Text("Account"),
                    subtitle: Text("Security notifications,change number"),
                    leading: Icon(Icons.key),
                    onTap: (){
                      Navigator.of(context).pushNamed("account");
                    },
                  );
                }
              //  third row
                if(index==2){
                  return ListTile(
                    title: Text("Privacy"),
                    subtitle: Text("Block contacts,disappering messages"),
                    leading: Icon(Icons.lock),
                  );
                }
              //  4th row
                if(index==3){
                  return ListTile(
                    title: Text("Avatar"),
                    subtitle: Text("Create,edit,profile photo"),
                    leading: Icon(Icons.face_3),
                  );
                }
              //  5th row
                if(index==4){
                  return ListTile(
                    title: Text("Chats"),
                    subtitle: Text("Theme,wallpapers,chat history"),
                    leading: Icon(Icons.chat),
                  );
                }
              //  6th row
                if(index==5){
                  return ListTile(
                    title: Text("Notifications"),
                    subtitle: Text("Message,group & call tones"),
                    leading: Icon(Icons.notifications),
                  );
                }
              //  7th row
                if(index==6){
                  return ListTile(
                    title: Text("Storage and data"),
                    subtitle: Text("Network usage,auto-download"),
                    leading: Icon(Icons.radio_button_unchecked),
                  );
                }
              //  8th row
                if(index==7){
                  return ListTile(
                    title: Text("App language"),
                    subtitle: Text("English (phone's language)"),
                    leading: Icon(Icons.wordpress),
                    onTap: (){
                      showModalBottomSheet(
                        context: context,


                        builder: (BuildContext context) {
                          // UDE : SizedBox instead of Container for whitespaces
                          return SizedBox(
                            height: MediaQuery.of(context).size.height/3,

                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: const <Widget>[
                                  ListTile(
                                    title: Text('English'),
                                    subtitle: Text("(device's language)"),
                                    leading: Icon(Icons.circle),
                                    
                                  ),
                                ],
                              ),

                          );
                        },
                      );

                    },
                  );

                }
              //  9th row
                if(index==8){
                  return ListTile(
                    title: Text("Help"),
                    subtitle: Text("Help centre,contact us,privacy policy"),
                    leading: Icon(Icons.help),
                  );
                }
              //  10th row
                if(index==9){
                  return ListTile(
                    title: Text("Invite a friend"),

                    leading: Icon(Icons.group),
                  );
                }
              }, separatorBuilder:  (context,index){
                if(index==0){
                  return Divider();
                }
                return Divider(color: Colors.white38,);
              }, itemCount: 10),

            ),

          ),

        ],
      ),
    );
  }
}
