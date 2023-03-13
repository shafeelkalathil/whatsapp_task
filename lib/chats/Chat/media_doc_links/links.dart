import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No links found",style: TextStyle(color: Colors.black,fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }
}
