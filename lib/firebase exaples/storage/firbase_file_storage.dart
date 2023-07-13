import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: FireBase_Storeee(),
  ));
}

class FireBase_Storeee extends StatefulWidget {
  @override
  State<FireBase_Storeee> createState() => _FireBase_StoreeeState();
}

class _FireBase_StoreeeState extends State<FireBase_Storeee> {
  FirebaseStorage storage = FirebaseStorage.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Store"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () => uploadData('camera'),
                    icon: const Icon(Icons.camera),
                    label: const Text("Camera")),
                ElevatedButton.icon(
                    onPressed: () => uploadData('gallery'),
                    icon: const Icon(Icons.photo_library),
                    label: const Text("Gallery")),
              ],
            ),
            Expanded(
                child: FutureBuilder(
                    future: loadData(),
                    builder: (context,
                        AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                            itemCount: snapshot.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              final images = snapshot.data![index];
                              return Card(
                                child: ListTile(
                                  leading: Image.network(images['url']),
                                  title: Text(images['description']),
                                  subtitle: Text(images['uploaded_by']),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete)),
                                ),
                              );
                            });
                      }
                      return const Center(child: CircularProgressIndicator());
                    }))
          ],
        ),
      ),
    );
  }

 Future<List<Map<String,dynamic>>> loadData() async{
   List<Map<String,dynamic>> images =[];

   final ListResult result = await storage.ref().list();
   final List<Reference> allfiles = result.items;
   await Future.forEach(allfiles, (sfile) async{
     final String url = await sfile.getDownloadURL();
     final FullMetadata metadata = await sfile.getMetadata();

     images.add({
       'url': url,
       'path': sfile.fullPath,
       'uploaded_by':metadata.customMetadata?['uploaded_by']?? "Nobody",
       'description':metadata.customMetadata?['description']??"Nodescription"
     });
   });
   return images;
 }

  Future<void> uploadData(String imagepath) async {
    final picker = ImagePicker();
    XFile? pickedImage;
    try {
      pickedImage = await picker.pickImage(
          source: imagepath == 'camera' ? ImageSource.camera : ImageSource.gallery, maxWidth: 1920);
      final String fileName = path.basename(pickedImage!.path);
      File imageFile = File(pickedImage.path);
      try {
        await storage.ref(fileName).putFile(imageFile,
            SettableMetadata(customMetadata:
            {'description': "Its me Xxx",
              'uploaded_by':'Some Description'
            }));
      }on FirebaseException catch (error) {
        print(error);
      }
    } catch(e){
      print('Exception $e');
    }
  }
}
