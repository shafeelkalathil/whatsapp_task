import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_task/chats/Chat/chat.dart';

class CallInfo extends StatefulWidget {
  final String? callername;
  final String? callerdate;
  final String? callertime;
  CallInfo(
      {Key? key,
      required this.callername,
      required this.callerdate,
      required this.callertime})
      : super(key: key);

  @override
  State<CallInfo> createState() => _CallInfoState();
}

class _CallInfoState extends State<CallInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        title: Text("Call info"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return Chat(name: widget.callername.toString());
                }));
              },
              child: Icon(Icons.chat)),
          SizedBox(
            width: 10,
          ),
          PopupMenuButton(
              child: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                    PopupMenuItem(
                        value: 1, child: Text("Remove from call log")),
                    PopupMenuItem(
                        value: 2,
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            showDialog(
                                context: context,
                                builder: (context) => StatefulBuilder(
                                      builder: (context, setState) =>
                                          AlertDialog(
                                        title: Text("Block Shafeel?"),
                                        actions: [
                                          Row(
                                            mainAxisAlignment:MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Cancel",style: TextStyle(color: Colors.teal),)),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Text("Block",style: TextStyle(color: Colors.teal),))
                                            ],
                                          )
                                        ],
                                      ),
                                    ));
                          });
                        },
                        child: Text("Block"))
                  ]),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        height: 500,
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: ListTile(
                    title: Text(
                      "${widget.callername}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/474x/e1/5f/5d/e15f5d52d29a4c5df7def932c4599c84.jpg"),
                    ),
                  ),
                );
              }
              if (index == 1) {
                return Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("${widget.callerdate}"),
                );
              }
              if (index == 2) {
                return ListTile(
                  title: Text("Outgoing"),
                  subtitle: Text("${widget.callertime}"),
                  leading: Icon(
                    Icons.call_made,
                    color: Colors.teal,
                  ),
                  trailing: Text("Not answered"),
                );
              }
              return ListTile(
                  title: Text("Missed"),
                  subtitle: Text("${widget.callertime}"),
                  leading: Icon(
                    Icons.call_received,
                    color: Colors.red,
                  ));
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.white,
              );
            },
            itemCount: 4),
      ),
    );
  }
}
