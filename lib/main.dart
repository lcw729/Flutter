import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  
        backgroundColor: Color(0xFF303F9F),
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/chaewon.jpg')
              ),
              Center(
                child: Text(
                  'chaewon',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Color(0xFFC5CAE9),
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.bold
                )
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Color(0xFF212121)
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+82 010 7686 6345',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        color: Color(0xFF212121),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400
                      )
                    ) 
                  ]
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Color(0xFF212121)
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'lcw729729@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        color: Color(0xFF212121)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}