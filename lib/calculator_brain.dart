import 'dart:math';
import 'package:bmi_calculator/constants.dart';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.units});

  final int height;
  final int weight;
  final Units units;
  double heightInCentiMetres;
  double _bmi;
  String result;
  String interpretation;

  String calculateBMI() {
    if (units == Units.cm) {
      _bmi = weight / pow(height / 100, 2);
      return _bmi.toStringAsFixed(1);
    } else {
      print(heightInCentiMetres);
      heightInCentiMetres = height * 2.54;
      _bmi = weight / pow(heightInCentiMetres / 100, 2);
      return _bmi.toStringAsFixed(1);
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      result = 'Overweight';
    } else if (_bmi >= 18.5) {
      result = 'Normal';
    } else {
      result = 'Underweight';
    }
    return result;
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      interpretation =
          'Your weight is more than average weight. You should do a more exercise!';
    } else if (_bmi >= 18) {
      interpretation = 'Your weight is normal. Keep up the good job!';
    } else {
      interpretation =
          'Your weight is a bit less than average weight. You should probably eat more!';
    }
    return interpretation;
  }
}
