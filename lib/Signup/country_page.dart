import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.teal,),onTap: (){
          Navigator.of(context).pop();
        },),
        actions: [
          Icon(Icons.search,color: Colors.teal,)
        ],
        title: Text("Choose a country",style: TextStyle(
          color: Colors.teal
        ),),
      ),
    );
  }
}
