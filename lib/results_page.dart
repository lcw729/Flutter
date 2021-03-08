import 'package:bmi_calculator/reusableCard.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'button_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(15.0),
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xFF1D1F33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('NORMAL', style: kStateTextStyle),
                  Text('22.1', style: kBigNumberTextStyle),
                  Text(
                    'You have a normal body weight. Good job!',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          
                  ButtonButton(onTap: (){
                    Navigator.pop(context);
                  },text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
