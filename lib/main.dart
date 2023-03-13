import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_task/Status/status_privacy.dart';
import 'package:whatsapp_task/chats/popupmenu/linked_devices.dart';
import 'package:whatsapp_task/chats/popupmenu/new_broadcast.dart';
import 'package:whatsapp_task/chats/popupmenu/payments.dart';
import 'package:whatsapp_task/chats/select_contact.dart';
import 'package:whatsapp_task/chats/popupmenu/starred_message.dart';

import 'Calls/create_call_link.dart';
import 'Camaera/camera.dart';
import 'Signup/agrre_and_continue.dart';
import 'Signup/country_page.dart';
import 'Signup/register_phone.dart';
import 'Status/type_status.dart';
import 'chats/Chat/media_doc_links/media_ontap/february_ontap.dart';
import 'chats/Chat/media_doc_links/media_ontap/lastmonth_ontap.dart';
import 'chats/Chat/media_doc_links/media_ontap/lastweek_ontap.dart';
import 'chats/Chat/media_doc_links/media_ontap/recent_ontap.dart';
import 'chats/new_community.dart';
import 'chats/new_group.dart';
import 'chats/popupmenu/settings/account.dart';
import 'chats/popupmenu/settings/profile.dart';
import 'chats/popupmenu/settings/settings.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras=await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          secondaryHeaderColor: Colors.teal,
        ),
        home: Home(),
        routes: {
          "home": (ctxt) {
            return Home();

            // , "chat":(ctxt){
            //    return Chat();
            //  }
          },
          "select_chat_contact": (cntxt) {
            return SelectChatContact();
          },
          "create_call_link": (cntxt) {
            return CreateCallLink();
          },
          "new_chat_group": (cntxt) {
            return NewChatGroup();
          },
          "new_community":(cntxt){
            return NewCommunity();
          },
          "type_status":(cntxt){
            return TypeStatus();
          },
          "new_broadcast":(context){
            return NewBroadcast();
          },
          "linked_device":(context){
            return LinkedDevice();
          },
          "starred_messages":(context){
            return StarredMessage();
          },
          "payments":(context){
            return Payments();
          },
          "settings":(context){
            return Setting();
          },
          "profile":(context){
             return Profile();
          },

          "account":(context){
            return Account();
          },
          "camera":(context){
            return CameraPage();
          },
          "register":(context){
            return RegisterPhone();
          },
          "select_country":(context){
            return CountryPage();
          },
          "status_privacy":(context){
            return StatusPrivacy();
          },
          "recent_ontap":(context){
            return RecentOntap();
          },
          "lastweek_ontap":(context){
            return LastWeekOntap();
          },
          "lastmonth_ontap":(context){
            return LastMonthOntap();
          },
          "february_ontap":(context){
            return FebruaryOntap();
          },



        });
  }
}
