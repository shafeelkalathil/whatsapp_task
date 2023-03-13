import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPhone extends StatefulWidget {
  const RegisterPhone({Key? key}) : super(key: key);

  @override
  State<RegisterPhone> createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: AppBar(
             elevation: 0,
             backgroundColor: Colors.white,
             title: Center(child: Text("Verify your phone number",style: TextStyle(fontSize: 20,color: Colors.teal),)),
             actions: [
               Icon(Icons.more_vert,color: Colors.black38,),
               SizedBox(width: 5,)
             ],
           ),

      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("WhatsApp will send an SMS message (carrier",style: TextStyle(fontSize: 16),),
            SizedBox(height: 5,),
            Text("charges may apply ) to verify your phone number",style: TextStyle(fontSize: 16),),
            SizedBox(height: 5,),
            Text("Enter your country code and phone number",style: TextStyle(fontSize: 16),),
            SizedBox(height: 10,),
            countryCard()
          ],
        ),
      ),
    );
  }
  Widget countryCard(){
  return InkWell(
    onTap: (){
      Navigator.of(context).pushNamed("select_country");
    },
    child: Container(
        width: MediaQuery.of(context).size.width/1.5,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Colors.teal,
          width: 1.8
        ))
      ),
      child: Row(
        children: [
          Expanded(child: Container(child: Center(child: Text("India",style: TextStyle(fontSize: 16),)))),
          Icon(Icons.arrow_drop_down,color: Colors.teal,size: 28,),
          
        ],
      ),
    ),
  );
  }
}
