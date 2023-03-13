import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: ListView.separated(itemBuilder: (context,index){
      //  listview 1st row
        if(index==0){
          return ListTile(
            title: Text("Security notifications"),
            leading: Icon(Icons.security),
          );
        }
      //  2nd row
        if(index==1){
          return ListTile(
            title: Text("Two-step verification"),
            leading: Icon(Icons.verified),
          );
        }
      //  3rd row
        if(index==2){
          return ListTile(
            title: Text("Change number"),
            leading: Icon(Icons.app_blocking),
          );
        }
      //  4th row
        if(index==3){
          return ListTile(
            title: Text("Request account info"),
            leading: Icon(Icons.feed),
          );
        }
      //  5th row
        if(index==4){
          return ListTile(
            title: Text("Delete my account"),
            leading: Icon(Icons.delete),
          );
        }


      },
          separatorBuilder: (context,index){
            return Divider(color: Colors.white24,);
          },
          itemCount: 5)
    );
  }
}
