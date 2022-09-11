//main.dart
import 'package:flutter/material.dart';
import 'package:vote_final/vote_regist.dart';
import 'package:vote_final/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 50.0,
                width: 400.0,
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    'MAIN PAGE',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xFF0F4C81),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 450.0,
                      height: 250.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.5, color: Color(0xFF0F4C81)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8)),
                      ),
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'HOT 게시물',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF0F4C81),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '스포츠',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '연예',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '음식',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 450.0,
                      height: 250.0,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.5, color: Color(0xFF0F4C81)),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(8)),
                      ),
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              '최근 게시물',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF0F4C81),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '스포츠',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '연예',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                          Container(
                            width: 340.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF0F4C81)),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(8)),
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: ListTile(
                              title: Text(
                                '음식',
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
                                child: Image.asset('images/menaldo.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue[900],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return VoteRegist();
                },
              ),
            );
          },
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Example9();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
