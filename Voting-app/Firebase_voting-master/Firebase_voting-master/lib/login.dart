//log_in.dart
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String _email;
  String _password;

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print('Form is valid Email: $_email, password: $_password');
    } else {
      print('Form is invalid Email: $_email, password: $_password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage(
                    'images/dsc_hufs_image1.png',
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'User Name'),
                validator: (value) =>
                    value.isEmpty ? 'Email can\'t be empty' : null,
                onSaved: (value) => _email = value,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) =>
                    value.isEmpty ? 'Password can\'t be empty' : null,
                onSaved: (value) => _password = value,
              ),
              InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                        child: Text('회원가입', style: TextStyle(fontSize: 18))),
                  ),
                  onTap: () => print('회원가입') //회원가입 페이지
                  ),
              ButtonTheme(
                minWidth: 300.0,
                height: 40.0,
                buttonColor: Colors.grey,
                child: RaisedButton(
                  onPressed: validateAndSave,
                  child: Text(
                    "L O G I N",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
