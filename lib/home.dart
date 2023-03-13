import 'package:flutter/material.dart';

import 'package:whatsapp_task/chats/chats.dart';
import 'package:whatsapp_task/Community/community.dart';
import 'package:whatsapp_task/Status/status.dart';

import 'Calls/calls.dart';
import 'chats/Chat/chat.dart';
import 'chats/new_group.dart';

class Home extends StatefulWidget {
  Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>
with TickerProviderStateMixin{
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController=TabController(length: 4, vsync: this);
    _tabController?.animateTo(index);
    _tabController?.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController?.dispose();
    super.dispose();
  }
  int index=1;
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: index,
      length: 4,

      child: Scaffold(

        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Theme.of(context).secondaryHeaderColor,
          //appbar icons
          actions: [
            Row(
              children: [

                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("camera");
                  },
                  icon: Icon(Icons.camera_alt)
                ),
                SizedBox(
                  width: 12,
                ),
                //search icon
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                //more icon with popup menu
               _tabController?.index==1? PopupMenuButton<int>(
                  child: Row(
                    children: [
                      Icon(Icons.more_vert),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  itemBuilder: (context) => [
                    // popupmenu item 1

                    PopupMenuItem(
                        value: 1,
                        // row has two child icon and text.
                        child: Row(
                          children: [
                            SizedBox(
                              // sized box with width 10
                              width: 10,
                            ),
                            Text("New group")
                          ],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("new_chat_group");
                          });
                        }),

                    // popupmenu item 2
                    PopupMenuItem(
                        value: 2,
                        // row has two child icon and text
                        child: Row(
                          children: [
                            SizedBox(
                              // sized box with width 10
                              width: 10,
                            ),
                            Text("New broadcast")
                          ],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("new_broadcast");
                          });
                        }),

                    // popupmenu item 3
                    PopupMenuItem(
                        value: 3,
                        child: Row(
                          children: [SizedBox(width: 10), Text("Link device")],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("linked_device");
                          });
                        }),

                    // popupmenu item 4
                    PopupMenuItem(
                        value: 4,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("Starred messages")
                          ],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("starred_messages");
                          });
                        }),

                    // popupmenu item 5
                    PopupMenuItem(
                        value: 5,
                        child: Row(
                          children: [SizedBox(width: 10), Text("Payments")],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("payments");
                          });
                        }),

                    // popupmenu item 6

                    PopupMenuItem(
                        value: 6,
                        child: Row(
                          children: [SizedBox(width: 10), Text("Settings")],
                        ),
                        onTap: () {
                          WidgetsBinding.instance!.addPostFrameCallback((_) {
                            Navigator.of(context).pushNamed("settings");
                          });
                        })


                  ],
                  offset: Offset(0, 0),
                  color: Colors.white,
                  elevation: 20,
                ):
               _tabController?.index==2? PopupMenuButton<int>(
                 child: Row(
                   children: [
                     Icon(Icons.more_vert),
                     SizedBox(
                       width: 10,
                     )
                   ],
                 ),
                 itemBuilder: (context) => [
                   // popupmenu item 1

                   PopupMenuItem(
                       value: 1,
                       // row has two child icon and text.
                       child: Row(
                         children: [
                           SizedBox(
                             // sized box with width 10
                             width: 10,
                           ),
                           Text("Status privacy")
                         ],
                       ),
                       onTap: () {
                         WidgetsBinding.instance!.addPostFrameCallback((_) {
                           Navigator.of(context).pushNamed("status_privacy");
                         });
                       }),

                   // popupmenu item 2
                   PopupMenuItem(
                       value: 2,
                       // row has two child icon and text
                       child: Row(
                         children: [
                           SizedBox(
                             // sized box with width 10
                             width: 10,
                           ),
                           Text("Settings")
                         ],
                       ),
                       onTap: () {
                         WidgetsBinding.instance!.addPostFrameCallback((_) {
                           Navigator.of(context).pushNamed("settings");
                         });
                       }),




                 ],
                 offset: Offset(0, 0),
                 color: Colors.white,
                 elevation: 20,
               ):
               PopupMenuButton<int>(
                 child: Row(
                   children: [
                     Icon(Icons.more_vert),
                     SizedBox(
                       width: 10,
                     )
                   ],
                 ),
                 itemBuilder: (context) => [
                   // popupmenu item 1

                   PopupMenuItem(
                       value: 1,
                       // row has two child icon and text.
                       child: Row(
                         children: [
                           SizedBox(
                             // sized box with width 10
                             width: 10,
                           ),
                           Text("Clear call log")
                         ],
                       ),
                       onTap: () {
                         WidgetsBinding.instance!.addPostFrameCallback((_) {
                          showDialog(context: context,
                              builder: (ctx)=>AlertDialog(
                                content: Text("Do you want to clear your entire call log?"),
                                actions: [
                                  TextButton(
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      }, child: Text("Cancel",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),)),
                                  TextButton(onPressed: (){
                                    showDialog(context: context,
                                        builder: (ctx)=>AlertDialog(
                                          title: Text("Processing"),
                                          actions: [
                                            TextButton(onPressed: (){
                                              Navigator.of(context).pop();
                                            }, child: Text("Done",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),))
                                          ],
                                        ));

                                  }, child: Text("OK",style: TextStyle(color: Theme.of(context).secondaryHeaderColor),))
                                ],
                              ));
                         });
                       }),

                   // popupmenu item 2
                   PopupMenuItem(
                       value: 2,
                       // row has two child icon and text
                       child: Row(
                         children: [
                           SizedBox(
                             // sized box with width 10
                             width: 10,
                           ),
                           Text("Settings")
                         ],
                       ),
                       onTap: () {
                         WidgetsBinding.instance!.addPostFrameCallback((_) {
                           Navigator.of(context).pushNamed("new_broadcast");
                         });
                       }),




                 ],
                 offset: Offset(0, 0),
                 color: Colors.white,
                 elevation: 20,
               )
              ],
            ),
          ],

          bottom: TabBar(

            controller: _tabController,
            indicatorColor: Colors.teal,

            tabs: [
              Tab(
                child: Icon(Icons.groups),
              ),
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(fontSize: 15),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Community(),
            Chats(),
            Status(),
            Calls(),
          ],
        ),
      ),
    );
  }
}
