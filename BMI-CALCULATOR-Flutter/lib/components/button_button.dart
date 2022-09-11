import 'package:flutter/material.dart';
import '../constants.dart';


class ButtonButton extends StatelessWidget {
  const ButtonButton({@required this.onTap, this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              buttonTitle,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
