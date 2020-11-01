import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:io';
import 'package:path/path.dart';

void main() => runApp(VoteRegist());

class VoteRegist extends StatefulWidget {
  @override
  _VoteRegistState createState() => _VoteRegistState();
}

class _VoteRegistState extends State<VoteRegist> {
  File imageFile;

  _openGallary(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      'Gellary',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      _openGallary(context);
                    },
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  GestureDetector(
                    child: Text(
                      'Camera',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      _openCamera(context);
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget decideImageView() {
    if (imageFile == null) {
      return Container(
        height: 30.0,
        width: 30.0,
        margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 3.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        child: Icon(
          Icons.add,
        ),
      );
    } else {
      Image.file(imageFile, width: 30, height: 30);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: 400.0,
            height: 550.0,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: Color(0xFF0F4C81)),
              borderRadius: const BorderRadius.all(const Radius.circular(8)),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 30.0,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      width: 85.0,
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text(
                          '투표등록',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  width: 340.0,
                  height: 50.0,
                  child: ListTile(
                    title: Text(
                      '제목: ',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.white),
                  ),
                ),
                Container(
                  width: 340.0,
                  height: 1.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                      width: 340.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.5, color: Color(0xFF0F4C81)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8)),
                      ),
                      child: ListTile(
                        onTap: () {
                          _showChoiceDialog(context);
                        },
                        title: Text(
                          '항목1',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        leading: ConstrainedBox(
                          constraints: BoxConstraints(
                            minWidth: 70,
                            minHeight: 150,
                            maxWidth: 70,
                            maxHeight: 160,
                          ),
                          child: decideImageView(),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                      width: 340.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.5, color: Color(0xFF0F4C81)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8)),
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        width: 5.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          border:
                              Border.all(width: 1.5, color: Color(0xFF0F4C81)),
                          borderRadius:
                              const BorderRadius.all(const Radius.circular(8)),
                        ),
                        child: decideImageView(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue[900],
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
