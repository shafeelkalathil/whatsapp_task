import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinkedDevice extends StatelessWidget {
  const LinkedDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linked devices"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Column(
        children: [
          //link device container
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: NetworkImage(
                      "https://i.gadgets360cdn.com/large/whatsapp_multi_device_support_update_image_1636207150180.jpg?downsize=950:*",
                    ),
                  ),
                  Text(
                    "Use WhatsApp on other devices",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Use WhatsApp on Web,Desktop,and other devices.",
                    style: TextStyle(color: Colors.black38),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Learn more"),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-60,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Link a  devices",
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.teal),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                      side: BorderSide(color: Colors.teal)))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),

          //device status
          Expanded(
            child: Container(
              color: Colors.white,
              child: Card(
                margin: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Device Status"),
                    Text("Tap a device to log out"),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Google_Chrome_icon_%28February_2022%29.svg/800px-Google_Chrome_icon_%28February_2022%29.svg.png"),
                      ),
                      title: Text("Google Chrome (Windows)"),
                      subtitle: Text("Last active today at 11:24 am"),
                    )
                  ],
                ),
              ),
            ),
          ),
          //subtitle
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your personal messages are ",
                        style: TextStyle(color: Colors.black38),
                      ),
                      Text(
                        "end-to-end encrypted ",
                        style: TextStyle(color: Colors.teal),
                      ),
                      Text(
                        "on all ",
                        style: TextStyle(color: Colors.black38),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Your devices",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
