import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgreeAndContinue extends StatelessWidget {
  const AgreeAndContinue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Center(
                      child: Text(
                    "WhatsApp Bussiness",
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "An easy tool for bussiness to communicate",
                    style: TextStyle(fontSize: 17, color: Colors.black38),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "with their costemers",
                    style: TextStyle(fontSize: 17, color: Colors.black38),
                  )
                ],
              ),
            ),
            Container(
                child: CircleAvatar(
              radius: 160,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTqvRh8wmmss9qxgEAqZfffbTgBAhAEul86tdiZPWbAEZkZHGhb"),
            )),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Tap agree and continue to accept the",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "WhatsApp Terms of Service",
                        style:
                            TextStyle(color: Colors.blueAccent, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("and"),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(color: Colors.blueAccent),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed("register");
                    },
                    child: Text(
                      "AGREE AND CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
