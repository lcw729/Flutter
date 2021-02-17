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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 55.0,
                backgroundImage: AssetImage('images/chaewon.jpg')
              ),
              Text(
                'chaewon',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold
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
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Color(0xFFC5CAE9),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Color(0xFF212121)
                      ),
                      title: Text(
                        '+82 010 7686 6345',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          color: Color(0xFF212121),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ) 
                  ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading :
                    Icon(
                      Icons.email,
                      color: Color(0xFF212121)
                    ),
                    title: Text(
                      'lcw729729@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        color: Color(0xFF212121)
                      ),
                    )
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'WEB Frontend & Flutter',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Color(0xFF212121)
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


                