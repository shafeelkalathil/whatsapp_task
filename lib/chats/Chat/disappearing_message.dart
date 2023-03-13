import 'package:flutter/material.dart';

class DisappearingMessages extends StatefulWidget {
  const DisappearingMessages({Key? key}) : super(key: key);

  @override
  State<DisappearingMessages> createState() => _DisappearingMessagesState();
}

class _DisappearingMessagesState extends State<DisappearingMessages> {
  String? option;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Diasppearing messages"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network("https://i.dailymail.co.uk/1s/2023/01/19/10/66738649-0-image-a-45_1674125086767.jpg",
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Make messages in this chat disappear",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("For more privacy and storage,all new messages will disappea from this chat for everyone after the selected duration.anyone in the chat can change the setting",style: TextStyle(fontSize: 14,color: Colors.black38),),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 20,top: 5),
                     child: Text("Message timer",style: TextStyle(fontSize: 16,),),
                   ),
                   RadioListTile(
                      activeColor: Colors.teal,
                     title: Text("24 hours"),
                       value: "24 hours",
                       groupValue: option,
                       onChanged: (value){
                     setState(() {
                       option=value.toString();
                     });
                       }),
                   RadioListTile(
                       activeColor: Colors.teal,
                       title: Text("7 days"),
                       value: "7 days",
                       groupValue: option,
                       onChanged: (value){
                         setState(() {
                           option=value.toString();
                         });
                       }),
                   RadioListTile(
                       activeColor: Colors.teal,
                       title: Text("90 days"),
                       value: "90 days",
                       groupValue: option,
                       onChanged: (value){
                         setState(() {
                           option=value.toString();
                         });
                       }),
                   RadioListTile(
                       activeColor: Colors.teal,
                       title: Text("Off"),
                       value: "Off",
                       groupValue: option,
                       onChanged: (value){
                         setState(() {
                           option=value.toString();
                         });
                       }),
                 ],
               ),
              ),
              Divider(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
               child: Column(
                 children: [
                   SizedBox(height: 20,),
                   ListTile(
                     title: Text("Try a default message timer"),
                     subtitle: Text("Start your new chats with disappearing messages"),
                     leading: Icon(Icons.av_timer,color: Colors.teal,),
                   ),
                 ],
               ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
