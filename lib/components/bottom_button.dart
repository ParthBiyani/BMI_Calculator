import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: kCalculateButtonHeight,
        width: double.infinity,
        color: kCalculateButtonColor,
        margin: EdgeInsets.only(top: 15.0),
        child: Center(
          child: Text(
            title,
            style: kNumberTextStyle.copyWith(
              fontSize: 34.0,
            ),
          ),
        ),
      ),
    );
  }
}
