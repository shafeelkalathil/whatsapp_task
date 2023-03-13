import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Media extends StatelessWidget {
  const Media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [

               Text("Recent",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),),
               SizedBox(height: 10,),
               Container(
                 height: MediaQuery.of(context).size.width/3,
                 width: MediaQuery.of(context).size.width/3-25,
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).pushNamed("recent_ontap");
                   },
                   child: Image(image: NetworkImage("https://images.unsplash.com/photo-1677506455248-fcdcbbd004a0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
                 ),
               ),
               SizedBox(height: 10,),
               Text("Last week",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
               SizedBox(height: 10,),
               Container(
                 height: MediaQuery.of(context).size.width/3,
                 width: MediaQuery.of(context).size.width/3-25,
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).pushNamed("lastweek_ontap");
                   },
                   child: Image(image: NetworkImage("https://images.unsplash.com/photo-1676968304480-ca6f7501df06?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
                 ),
               ),
               SizedBox(height: 10,),
               Text("Last month",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
               SizedBox(height: 10,),
               Container(
                 height: MediaQuery.of(context).size.width/3,
                 width: MediaQuery.of(context).size.width/3-25,
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).pushNamed("lastmonth_ontap");
                   },
                   child: Image(image: NetworkImage("https://images.unsplash.com/photo-1660167213240-c4ea3277006e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHhIeFlUTUhMZ09jfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
                 ),
               ),
               SizedBox(height: 10,),
               Text("February",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold)),
               SizedBox(height: 10,),
               Container(
                 height: MediaQuery.of(context).size.width/3,
                 width: MediaQuery.of(context).size.width/3-25,
                 child: InkWell(
                   onTap: (){
                     Navigator.of(context).pushNamed("february_ontap");
                   },
                   child: Image(image: NetworkImage("https://plus.unsplash.com/premium_photo-1677010266364-e9d644011577?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")),
                 ),
               )
             ],
           ),
         ),
      ),
    );
  }
}
