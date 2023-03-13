import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Doc extends StatelessWidget {
  const Doc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text("No document found",style: TextStyle(color: Colors.black,fontSize: 18),)
           ],
         ),
       ),
      ),
    );
  }
}
