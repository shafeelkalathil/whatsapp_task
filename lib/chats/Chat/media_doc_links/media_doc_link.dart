import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'doc.dart';
import 'links.dart';
import 'media.dart';

class MediaDocLink extends StatefulWidget {
  const MediaDocLink({Key? key}) : super(key: key);

  @override
  State<MediaDocLink> createState() => _MediaDocLinkState();
}

class _MediaDocLinkState extends State<MediaDocLink>
with TickerProviderStateMixin{
  TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController=TabController(length: 3, vsync: this);

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


  @override
  Widget build(BuildContext context) {
   return DefaultTabController(

       length: 3,
       child: Scaffold(
         backgroundColor: Colors.white,

         appBar: AppBar(
           backgroundColor: Colors.white,
           iconTheme: IconThemeData(
             color: Colors.black, // <-- SEE HERE
           ),
           elevation: 0,
           title: Text("Shafeel Kalathil",style: TextStyle(color: Colors.black),),

          actions: [

            InkWell(
              onTap: (){
               
              },

             child: _tabController?.index==0?Text(''):Icon(Icons.search,color: Colors.black38,),
            ),SizedBox(width: 18,)
          ],
           bottom: TabBar(
             controller: _tabController,
             indicatorColor: Theme.of(context).secondaryHeaderColor,
             tabs: [
               Tab(
                 child: Text("MEDIA",style: TextStyle(color: Colors.black),),
               ),
               Tab(
                 child: Text("DOCS",style: TextStyle(color: Colors.black),),
               ),Tab(
                 child: Text("LINKS",style: TextStyle(color: Colors.black),),
               )
             ],
           ),

         ),

         body: TabBarView(
           controller: _tabController,
           children: [

             Media(),
             Doc(),
             Links()
           ],
         ),
       ));
  }
}
