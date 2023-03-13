import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCommunity extends StatelessWidget {
  const NewCommunity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text("New community"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        onPressed: (){},child: Icon(Icons.arrow_forward),
      ),
      body: Column(
        //main community icon
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                    height: 120.0,
                    width: 120.0,
                    color: Colors.black12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.groups,
                          color: Colors.white,
                          size: 100,
                        ),
                        // CircleAvatar(
                        //   child: Icon(Icons.add),
                        // ),
                      ],
                    )),
              ),
            ),
          ),
          //community name text field
          Container(
            width: 380,
            child: TextField(
              cursorColor: Theme.of(context).secondaryHeaderColor,
              decoration: InputDecoration(
                hintText: "Community name",

              ),
            ),
          ),
          //community desciption text field
          Container(
            height: 200,
            width: 380,
            color: Colors.black12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextField(
                  cursorColor: Theme.of(context).secondaryHeaderColor,
                  decoration: InputDecoration(
                    hintText: "Community description",

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
