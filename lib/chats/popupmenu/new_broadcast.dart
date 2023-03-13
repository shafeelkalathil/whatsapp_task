import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewBroadcast extends StatelessWidget {
  const NewBroadcast({Key? key}) : super(key: key);

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
        onPressed: (){},child: Icon(Icons.done),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        //title
        if(index==0){
         return Padding(
           padding: const EdgeInsets.only(top: 20),
           child: Column(
             children: [
               Text("Only contacts with+992645812 in their address book will"),
               Text("recive your broadcast messages."),
             ],
           ),
         );

        }
        //listview
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
            if(index==0){
              return Divider();
            }
            return Divider(color: Colors.white,);
          },
          itemCount: 30),
    );
  }
}
