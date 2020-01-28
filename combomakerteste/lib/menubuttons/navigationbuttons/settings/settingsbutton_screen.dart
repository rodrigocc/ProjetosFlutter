import 'dart:io';
import 'package:combomakerteste/src/login_screen.dart';
import 'package:combomakerteste/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:combomakerteste/widgets/bottomnavigationbar.dart';
import 'adjustement_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';



class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar("Configurações",false),
      bottomNavigationBar: buildBottomNavigation(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                maxRadius: 80.0,
                backgroundColor: Colors.blue,
                child: IconButton(
                  icon: Image.asset("icons/perfil.png",color: Colors.white,) ,
                  onPressed: ()async{
                    final File imgFile = await ImagePicker.pickImage(source: ImageSource.camera);
                    if(imgFile != null){
                      StorageUploadTask task = FirebaseStorage.instance.ref().child(
                        DateTime.now().millisecondsSinceEpoch.toString()
                      ).putFile(imgFile);
                      StorageTaskSnapshot taskSnapshot =  await task.onComplete;
                      String url = await taskSnapshot.ref.getDownloadURL();
                      print(url);

                    }

                    
                  },
                  splashColor: Colors.white,
                  iconSize: 50.0,


                ),

              ),
            ),
            Text("SEU NOME"),
            Text("SEU EMAIL"),
            SizedBox(
              width: 250.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.tealAccent,
                shape: (
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.black,
                      ),



                    )
                ),
                child: Text("AJUSTES"
                  ,style: TextStyle(
                      color: Colors.black
                  ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Adjustmentscreen()));


                },
              ),


            ),
            Divider(
              height: 10.0,
              color: Colors.transparent,

            ),




            SizedBox(
              width: 250.0,
              height: 50.0,
              child:RaisedButton(
                color: Colors.black,
                shape: (
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.white,
                      ),

                    )
                ),
                child: Text("SAIR"
                  ,style: TextStyle(
                      color: Colors.white
                  ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginScreen()));

                },
              ),

            ),
          ],
        ),
      ),
    );

  }
}
