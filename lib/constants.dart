import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

const double kCalculateButtonHeight = 60;
const Color kActiveCardColour = Color(0xFF1D1F33);
const Color kInactiveCardColour = Color(0xFF111328);
const Color kCalculateButtonColor = Color(0xFFEB1555);
const Color kActiveSliderColour = Color(0xFFEB1555);
const Color kInactiveSliderColor = Color(0xFF8D8E98);
const double kSliderMin = 120;
const double kSliderMax = 220;
const kLabelStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);
const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kResultTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
var alertStyle = AlertStyle(
  descStyle: TextStyle(
    color: Colors.grey[400],
  ),
  titleStyle: TextStyle(
    color: Colors.grey[400],
  ),
);

int constHeight = 180;
int constWeight = 60;
int constAge = 20;
int constFeets = 5;
int constInches = 0;

enum Gender {
  male,
  female,
}

enum Units {
  cm,
  feets,
}

Gender genderSelect;

bool pressed = false;

bool unitsDropDown = false;

bool themeDropDown = false;
