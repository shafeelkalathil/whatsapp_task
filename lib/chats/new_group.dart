import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewChatGroup extends StatelessWidget {
  const NewChatGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New group"),

        backgroundColor: Theme.of(context).secondaryHeaderColor,
        actions: [

          Icon(Icons.search),
          SizedBox(width: 15,)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        onPressed: (){},child: Icon(Icons.arrow_forward),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return ListTile(
          title: Text("Shafeel $index"),
          subtitle: Text("Busy"),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
          ),
        );
      },
          separatorBuilder: (context,index){
        return Divider();
          },
          itemCount: 30),
    );
  }
}
