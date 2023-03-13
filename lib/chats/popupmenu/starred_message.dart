import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarredMessage extends StatelessWidget {
  const StarredMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Starred messages"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: Theme.of(context).secondaryHeaderColor,
              child: Icon(Icons.star,size: 80,color: Colors.white,),
            ),
            SizedBox(height: 60,),
            Text("Tap and hold on any message",style: TextStyle(fontSize: 18,color: Colors.black38),),
            SizedBox(height:5,),
            Text("in any chat to start it,so you can",style: TextStyle(fontSize: 18,color: Colors.black38)),
            SizedBox(height:5,),
            Text("easily find it later",style: TextStyle(fontSize: 18,color: Colors.black38))
          ],
        ),
      ),
    );
  }
}
