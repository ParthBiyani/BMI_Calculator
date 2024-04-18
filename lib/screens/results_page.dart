import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatefulWidget {
  ResultsPage(
      {@required this.resultBMI,
      @required this.result,
      @required this.interpretation});

  final String resultBMI;
  final String result;
  final String interpretation;

  @override
  _ResultsPageState createState() => _ResultsPageState(
      resultBMI: resultBMI, result: result, interpretation: interpretation);
}

class _ResultsPageState extends State<ResultsPage> {
  _ResultsPageState(
      {@required this.resultBMI,
      @required this.result,
      @required this.interpretation});

  final String resultBMI;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResultTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    resultBMI,
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'NORMAL BMI IS:',
                        style: kLabelStyle,
                      ),
                      Text(
                        '18.5 - 24.9',
                        style: kLabelStyle.copyWith(
                          color: Color(0xFFFFFFFF),
                          fontSize: 22.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                constHeight = 180;
                constWeight = 60;
                constAge = 20;
                constFeets = 5;
                constInches = 0;
                genderSelect = null;
              });
              Navigator.pop(context);
            },
            child: Container(
              color: kCalculateButtonColor,
              height: kCalculateButtonHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kNumberTextStyle.copyWith(
                    fontSize: 34.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
