import 'dart:io';
import 'package:drop_zone/drop_zone.dart';
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:flutter_hr_management/common/app_colors.dart';
import 'package:image_picker/image_picker.dart';

class CardWidgetProfile extends StatefulWidget {
  @override
  _CardWidgetProfileState createState() => _CardWidgetProfileState();
}

class _CardWidgetProfileState extends State<CardWidgetProfile> {
  File _image;
  bool kIsWeb = true;
  final picker = ImagePicker();

  Future<void> _openImagePicker() async {
    final pickedImage = await picker.getImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey[300], width: 2)),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropZone(
            onDragEnter: () {
              print('drag enter');
            },
            onDragExit: () {
              print('drag exit');
            },
            onDrop: (List<html.File> files) {
              print('files dropped');
              print(files);
            },
            child: GestureDetector(
              onTap: _openImagePicker,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                width: 300,
                height: 330,
                child: _image != null
                    ? Image.file(_image, fit: BoxFit.cover)
                    : Text('Please select an image'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: AppColor.yellow,
              elevation: 3,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            ),
            child: Text('Choose a image'),
            onPressed: _openImagePicker,
          ),
        ],
      ),
    );
  }
}
