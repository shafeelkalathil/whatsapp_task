import 'package:flutter/material.dart';
import 'package:whatsapp_task/chats/Chat/chat.dart';
import 'package:whatsapp_task/chats/select_contact.dart';

class Chats extends StatefulWidget {
  Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 80,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [


            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed("select_chat_contact");
              },
              child: Icon(Icons.chat),
              backgroundColor: Theme.of(context).secondaryHeaderColor,
            ),


          ],
        ),
      ),

      body: SafeArea(
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Shafeel $index"),
                subtitle: Text("Hello"),
                leading: CircleAvatar(
                  radius: 30,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg")),
                trailing: Text("$index:00 PM"),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (cntxt) {
                    return Chat(name: "Shafeel $index");
                  }));
                },
              );
            },
            separatorBuilder: (context, index) {
              return Divider(color: Colors.white,);
            },
            itemCount: 30),
      ),
    );
  }
}
