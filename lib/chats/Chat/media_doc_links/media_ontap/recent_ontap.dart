import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentOntap extends StatelessWidget {
  const RecentOntap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("You"),
        actions: [
          Icon(Icons.more_vert)
        ],

      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height-108,
                child: Image(image: NetworkImage("https://images.unsplash.com/photo-1677506455248-fcdcbbd004a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),),
              )
            ],
          )
        ],
      ),
    );
  }
}
