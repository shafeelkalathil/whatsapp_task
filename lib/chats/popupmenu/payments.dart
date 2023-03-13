import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments"),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                //1st card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height:130 ,
                  // color: Colors.amber,
                  child: Card(
                 margin: EdgeInsets.all(0),
                    child: ListView.separated(itemBuilder: (context,index){
                      //1st row
                      if(index==0){
                        return ListTile(
                          title: Text("Send payment"),
                          leading: Icon(Icons.currency_rupee_outlined,color: Theme.of(context).secondaryHeaderColor,),
                        );
                      }
                    //  2nd row
                      if(index==1){
                        return ListTile(
                          title: Text("Scan paymnet QR code"),
                          leading: Icon(Icons.qr_code,color: Theme.of(context).secondaryHeaderColor,),
                        );
                      }
                    }, separatorBuilder:(context,index){
                      return Divider();
                    } , itemCount: 2),
                  ),
                ),
                SizedBox(height: 10,),
                //2nd card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 160,

                  child: Card(
                    margin: EdgeInsets.all(0),

                    child: Column(

                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10,),

                        Row(

                          children: [
                            SizedBox(width: 10,),

                            Text("History",style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.bold),),
                          ],
                        ),
                         Icon(Icons.payment_sharp),
                        Text("No payment history")
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              //  3rd card
                Container(
                  width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height-720,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       SizedBox(height: 10,),
                        Text("Payment methods",style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height-816,
                          color: Colors.teal[100],
                          child: ListView.separated(itemBuilder: (context,index){
                            if(index==0){
                              return ListTile(

                                title: Text("To protect your security,WhatsApp does not store your UPI PIn or account number.",style: TextStyle(fontSize: 13,color: Colors.black38),),
                                leading: Icon(Icons.security),
                              );
                            }
                          }, separatorBuilder: (context,index){
                            return Divider();
                          }, itemCount: 1),
                        ),
                        ListTile(
                          title: Text("Add payment method"),
                          leading: Icon(Icons.add_circle),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              //  4th card
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-840,
                   child: Card(
                     margin: EdgeInsets.all(0),
                     child: ListTile(
                       title: Text("Help"),
                       leading: Icon(Icons.help,),
                     ),
                   ),
                ),
                SizedBox(height: 20,),
              //  5th
                Text("powered By",style: TextStyle(fontSize: 8),),
                Image(image: NetworkImage("https://m.economictimes.com/thumb/msid-74960608,width-1200,height-900,resizemode-4,imgsize-49172/upi-twitter.jpg",scale: 25))
              ],
            ),
          )
        ],
      ),
    );
  }
}
