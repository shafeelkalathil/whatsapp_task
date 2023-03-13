import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraViewPage extends StatelessWidget {
  const CameraViewPage({Key? key,this.path}) : super(key: key);
  final String? path;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.crop_rotate,size: 27,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,size: 27,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.title,size: 27,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 27,))
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height-150,
              child: Image.file(
                File(path!),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(

                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.white12,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white
                    ),

                    maxLines: 10,
                    minLines: 1,
                    cursorColor: Theme.of(context).secondaryHeaderColor,
                    decoration: InputDecoration(

                      border: InputBorder.none,
                       prefixIcon: Icon(Icons.add_photo_alternate,color: Colors.white,size: 27,),
                       hintText: "Add caption",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17
                      ),
                      suffixIcon: CircleAvatar(
                        radius: 27,
                        backgroundColor: Theme.of(context).secondaryHeaderColor,
                        child: Icon(Icons.check),
                      )
                    ),

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

}
