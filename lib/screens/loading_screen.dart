import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'location.dart';
import 'dart:convert';

const apiKey = '88b83ade7037c995188184f8fb9c0107';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longtitude;

   void getLocation() async {
     Location location = Location();
     await location.getCurrentLocation();
     latitude = location.latitude;
     longtitude = location.longitude;

     getData();
   }

  @override
  void initState() {
     getLocation();
  }

  void getData() async {
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longtitude&appid=$apiKey');

    if (response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);

      double temperature = decodeData['main']['temp'];
      int condition = decodeData['weather'][0]['id'];
      String cityName = decodeData['name'];   
      print(temperature);
      print(condition);
      print(cityName);
    }
    else{
      print(response.statusCode);
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
