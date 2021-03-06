import "package:flutter/material.dart";
import 'package:file_picker/file_picker.dart';
import "package:open_file/open_file.dart";
class Add_File extends StatefulWidget {
  static const String id="Add_File";

  @override
  _Add_FileState createState() => _Add_FileState();
}

class _Add_FileState extends State<Add_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon:Icon(Icons.arrow_back_ios),
        ),
      ),
    body:Center(
      child:ElevatedButton(
        onPressed: ()async{
          final result=await FilePicker.platform.pickFiles();

          if (result==null) return;

          final file=result.files.first;
          openFile(file);
        },
        child:Text("Pick File"),
      ),
    )
    );
  }
  void openFile(PlatformFile file){
    OpenFile.open(file.path!);
  }
}


