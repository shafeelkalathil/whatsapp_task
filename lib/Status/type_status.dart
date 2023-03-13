import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypeStatus extends StatelessWidget {
  const TypeStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //start row
            Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(),
                    Icon(
                      Icons.face,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
            //middle row
            Flexible(
              child: Container(
                child: TextField(
                  cursorHeight: 40,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type a status",
                    contentPadding: EdgeInsets.all(100),
                    hintStyle: TextStyle(fontSize: 30, color: Colors.white38),
                  ),
                ),
              ),
            ),
            //last row
            Container(
              width: 390,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("click");
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.track_changes,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Status (contacts)",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      side: BorderSide(color: Colors.black38))),
                        )),
                    FloatingActionButton(
                      onPressed: () {},
                      child: Icon(Icons.mic),
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
