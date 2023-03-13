import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class StatusPrivacy extends StatefulWidget {
  const StatusPrivacy({Key? key}) : super(key: key);

  @override
  State<StatusPrivacy> createState() => _StatusPrivacyState();
}

class _StatusPrivacyState extends State<StatusPrivacy> {
String? statusOption;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Status privacy"),
       backgroundColor: Theme.of(context).secondaryHeaderColor,
     ),
    body: SafeArea(
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width,
         // color: Colors.teal,
        margin: EdgeInsets.all(18),
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Who can see my status updates",style: TextStyle(color: Colors.black38,fontSize: 15,fontWeight: FontWeight.w400),),
            RadioListTile(
              activeColor: Colors.teal,
              title: Text("My contacts"),
              value: "my contacts",
              groupValue: statusOption,
              onChanged: (value){
                setState(() {
                  statusOption = value.toString();
                });
              },
            ),

            RadioListTile(
              activeColor: Colors.teal,
              title: Text("My contacts except..."),
              value: "my contacts except...",
              groupValue: statusOption,
              onChanged: (value){
                setState(() {
                  statusOption = value.toString();
                });
              },
            ),

            RadioListTile(
              activeColor: Colors.teal,
              title: Text("Only share with..."),
              value: "only share with...",
              groupValue: statusOption,

              onChanged: (value){
                setState(() {
                  statusOption = value.toString();
                });
              },

            ),
           Text("Chage to your privacy settings won't affect status updates that you've sent already",style: TextStyle(color: Colors.black38),)
          ],
        ),
      ),
    ),
   );
  }
}


