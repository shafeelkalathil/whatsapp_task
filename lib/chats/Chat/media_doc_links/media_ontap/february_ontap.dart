import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FebruaryOntap extends StatelessWidget {
  const FebruaryOntap({Key? key}) : super(key: key);

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
                child: Image(image: NetworkImage("https://plus.unsplash.com/premium_photo-1677010266364-e9d644011577?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),),
              )
            ],
          )
        ],
      ),
    );
  }
}
