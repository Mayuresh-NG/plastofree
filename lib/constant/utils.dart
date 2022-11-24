import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 20,
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

Future<List<File>>
pickImages() async{
  List<File> images = [];
  try{
    var files = await FilePicker.platform.pickFiles(
      type : FileType.image,
      allowMultiple: true,
    );
    if(files !=null && files.files.isNotEmpty){
      for(int i=0; i<files.files.length; i++)
        {
          images.add(File(files.files[i].path!));
        }
    }
  } catch(e){
    debugPrint(e.toString());
  }
  return images;
}
