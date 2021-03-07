import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusableCard.dart';
import 'genderCard.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardcolour = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
   Color femaleContainerColour = activeCardColor;
   Color maleContainerColour = activeCardColor;
  void updateColor(int gender){
    // male Container got pressed
    if (gender == 1){
      if (maleContainerColour == activeCardColor){
        maleContainerColour = inactiveCardcolour;
        femaleContainerColour = activeCardColor;
      }else {
        maleContainerColour = activeCardColor;
      }
    }else {
      if (femaleContainerColour == activeCardColor){
        femaleContainerColour = inactiveCardcolour;
        maleContainerColour = activeCardColor;
      }else {
        femaleContainerColour = activeCardColor;
      }   
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleContainerColour,
                    cardChild: GenderCard(
                      genderText: 'MALE',
                      genderIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleContainerColour,
                    cardChild: GenderCard(
                      genderText: 'FEMALE',
                      genderIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ReusableCard(
            colour: activeCardColor,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colour: activeCardColor,
              )),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 15.0),
          width: double.infinity,
          height: bottomContainerHeight,
        )
      ]),
    );
  }
}
