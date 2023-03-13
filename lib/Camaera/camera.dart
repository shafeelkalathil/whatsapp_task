import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whatsapp_task/Camaera/camaera_view.dart';
List<CameraDescription> cameras=[];

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;
   late Future<void> cameraValue;
  // File? image;
  // Future pickImage(ImageSource source)async{
  //   try{
  //     final image=await ImagePicker().pickImage(source: ImageSource.camera);
  //     if(image==null) return;
  //     final imageTemporary=File(image.path);
  //
  //     setState(() {
  //       this.image=imageTemporary;
  //     });
  //
  //   }on PlatformException catch(e){
  //     print("Failed ti pick image :$e");
  //   }
  // }


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    // pickImage(ImageSource.camera);
    _cameraController=CameraController(cameras[0], ResolutionPreset.high);
     cameraValue=_cameraController.initialize();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // title: Text("Camera"),
      // ),
      body: Stack(
           children: [
             Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.height,
               child: FutureBuilder(
                  future:cameraValue ,
                   builder: (context,snapshot){
                 if(snapshot.connectionState==ConnectionState.done){
                   return CameraPreview(_cameraController);
                 }
                 else(){
                   return Center(child: CircularProgressIndicator(),);
                 };
                 return Text("loading");
               }),
             ),
             Positioned(
               bottom: 0.0,
               child: Container(

                 color: Colors.black,
                 width: MediaQuery.of(context).size.width,

                 padding: EdgeInsets.only(top: 5,bottom: 5),
                 child: Column(
                   children: [
                     Row(
                       mainAxisSize: MainAxisSize.max,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         IconButton(onPressed: (){}, icon: Icon(Icons.flash_off,color: Colors.white,size: 28,)),
                        InkWell(onTap: (){
                          takePhoto(context);
                         // pickImage(ImageSource.camera);
                        }, child:  Icon(Icons.panorama_fish_eye,color: Colors.white,size: 70,)),
                         IconButton(onPressed: (){}, icon: Icon(Icons.flip_camera_android,color: Colors.white,size: 28,))
                       ],
                     ),
                     SizedBox(height: 5,),
                     Text("Hold for  video,tap for photo",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),

                   ],
                 ),

               ),
             )
           ],
      ),
    );
  }
  void takePhoto(BuildContext context) async {
  final path=join((await getTemporaryDirectory()).path,"${DateTime.now()}.png");
  await _cameraController.takePicture(path);
  Navigator.push(context as BuildContext, MaterialPageRoute(builder: (builder)=>CameraViewPage(path:path.toString() ,)));
  }
}
