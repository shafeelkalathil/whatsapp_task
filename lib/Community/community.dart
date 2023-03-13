import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Community extends StatefulWidget{
  Community({Key?key}):super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: ListTile(
                    title: Text("New community",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    leading:  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[400],),
                      child: CircleAvatar(
                        backgroundColor:  Colors.grey[400],
                        backgroundImage: NetworkImage("https://www.firstmontanatitle.com/media/Community-Icon-Final.jpg"),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30,top: 30),
                          child: CircleAvatar(
                            radius: 10,

                          child: Icon(Icons.add),
                          ),
                        ),
                      )

                    ),
                  ),

                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 0,right: 0,top: 2,bottom: 2),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index==0){
                      return ListTile(
                        title: Text("Group 1"),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[400]),
                          child: Icon(Icons.groups,color: Colors.white,),

                        ),
                      );
                    }
                    if(index==1){
                    return ListTile(
                    title: Text("Group 1"),
                      subtitle: Text("+91 9645900333:https://www.instagram.."),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green[300],
                        child: Icon(Icons.volume_up,color: Colors.teal,),
                      ),
                    );
                    }
                    if(index==2){
                      return ListTile(
                        title: Text("View all",style: TextStyle(color: Colors.black38),),
                        leading: Icon(Icons.chevron_right),
                      );
                    }
                  },
                      separatorBuilder: (context,index){
                    if(index==0){
                      return Divider();
                    }
                    return Divider(color: Colors.white,);
                      },
                      itemCount: 3),

                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index==0){
                      return ListTile(
                        title: Text("Shafeel"),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[400]),
                          child: Icon(Icons.groups,color: Colors.white,),

                        ),
                      );
                    }
                    if(index==1){
                      return ListTile(
                        title: Text("Shafeel"),
                        subtitle: Text("This group was added to the community .."),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[300],
                          child: Icon(Icons.volume_up,color: Colors.teal,),
                        ),
                      );
                    }
                    if(index==2){
                      return ListTile(
                        title: Text("Group 1"),
                        subtitle: Text("+91 9645900333 "),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1678481645061-6d32b3daffc7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"),
                        ),
                      );
                    }
                    if(index==3){
                      return ListTile(
                        title: Text("View all",style: TextStyle(color: Colors.black38),),
                        leading: Icon(Icons.chevron_right),
                      );
                    }
                  },
                      separatorBuilder: (context,index){
                        if(index==0){
                          return Divider();
                        }
                        return Divider(color: Colors.white,);
                      },
                      itemCount: 4),
                ),
              ),
              Card(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: ListView.separated(itemBuilder: (context,index){
                    if(index==0){
                      return ListTile(
                        title: Text("Work From Home"),
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey[400]),
                          child: Icon(Icons.groups,color: Colors.white,),

                        ),

                      );
                    }
                    if(index==1){
                      return ListTile(
                        title: Text("Work From Home"),
                        subtitle: Text("+91 9605337103"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[300],
                          child: Icon(Icons.volume_up,color: Colors.teal,),
                        ),
                      );
                    }
                    if(index==2){
                      return ListTile(
                        title: Text("View all",style: TextStyle(color: Colors.black38),),
                        leading: Icon(Icons.chevron_right),
                      );
                    }
                  },
                      separatorBuilder: (context,index){
                        if(index==0){
                          return Divider();
                        }
                        return Divider(color: Colors.white,);
                      },
                      itemCount: 3),
                ),
              )
            ],
          ),
        ),
      ),
    );

  }
}