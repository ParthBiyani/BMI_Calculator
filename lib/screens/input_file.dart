import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:auto_size_text/auto_size_text.dart';

class InputPage extends StatefulWidget {
  InputPage({this.height, this.weight, this.age});

  int height;
  int weight;
  int age;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget getWidget() {
    if (selectedUnits == Units.cm) {
      return SliderTheme(
        data: SliderTheme.of(context).copyWith(
          inactiveTrackColor: kInactiveSliderColor,
          activeTrackColor: Colors.white,
          thumbColor: kCalculateButtonColor,
          overlayColor: Color(0x29EB1555),
        ),
        child: Slider(
          value: height.toDouble(),
          min: kSliderMin,
          max: kSliderMax,
          onChanged: (double newValue) {
            setState(() {
              height = newValue.round();
              constHeight = height;
            });
          },
        ),
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RoundIconButton(
            onPressed: () {
              setState(() {
                if (feets == 0) {
                  constInches = inches;
                  constFeets = feets;
                } else {
                  feets--;
                  constInches = inches;
                  constFeets = feets;
                }
              });
            },
            icon: FontAwesomeIcons.minus,
          ),
          SizedBox(
            width: 15.0,
          ),
          RoundIconButton(
            onPressed: () {
              setState(() {
                if (feets == 9) {
                  feets = 0;
                  constInches = inches;
                  constFeets = feets;
                } else {
                  feets++;
                  constInches = inches;
                  constFeets = feets;
                }
              });
            },
            icon: FontAwesomeIcons.plus,
          ),
          SizedBox(
            width: 60.0,
          ),
          RoundIconButton(
            onPressed: () {
              setState(() {
                if (inches == 0) {
                  inches = 11;
                  feets--;
                  constInches = inches;
                  constFeets = feets;
                } else {
                  inches--;
                  constInches = inches;
                  constFeets = feets;
                }
              });
            },
            icon: FontAwesomeIcons.minus,
          ),
          SizedBox(
            width: 15.0,
          ),
          RoundIconButton(
            onPressed: () {
              setState(() {
                if (inches == 11) {
                  inches = 0;
                  feets++;
                  constInches = inches;
                  constFeets = feets;
                } else {
                  inches++;
                  constInches = inches;
                  constFeets = feets;
                }
              });
            },
            icon: FontAwesomeIcons.plus,
          ),
        ],
      );
    }
  }

  Widget getHeight() {
    if (selectedUnits == Units.cm) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: <Widget>[
          Text(
            height.toString(),
            style: kNumberTextStyle,
          ),
          Text(
            'cm',
            style: kLabelStyle,
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            feets.toString() + '\'',
            style: kNumberTextStyle,
          ),
          Text(
            inches.toString() + '\"',
            style: kNumberTextStyle,
          ),
        ],
      );
    }
  }

  Widget getSpacing() {
    if (unitsDropDown) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      );
    } else {
      return Column();
    }
  }

  Widget getListTile() {
    if (unitsDropDown == false) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(''),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      );
    }
  }

  Widget getUnitsInfo() {
    if (unitsDropDown) {
      return Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: DialogButton(
                  child: Text('Metric'),
                  onPressed: () {},
                  color: kCalculateButtonColor,
                ),
              )),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.all(5.0),
                child: DialogButton(
                  child: Text('Imperial'),
                  onPressed: () {},
                  color: kCalculateButtonColor,
                ),
              )),
            ],
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
                child: DialogButton(
                  child: Text('Height Units only!'),
                  onPressed: () {},
                  color: kCalculateButtonColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: DialogButton(
                  child: Text('Weight units only!'),
                  onPressed: () {},
                  color: kCalculateButtonColor,
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Column();
    }
  }

  int feets = constFeets;
  int inches = constInches;
  Color maleCardColor = kInactiveCardColour;
  Color femaleCardColor = kInactiveCardColour;
  Gender selectedGender = genderSelect;
  int height = constHeight;
  int weight = constWeight;
  int age = constAge;
  Units selectedUnits = Units.cm;

  @override
  Widget build(BuildContext context) {
    feets = constFeets;
    inches = constInches;
    height = constHeight;
    weight = constWeight;
    age = constAge;
    selectedGender = genderSelect;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                        genderSelect = selectedGender;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                        genderSelect = selectedGender;
                      });
                    },
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                    ),
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  getHeight(),
                  getWidget(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: kLabelStyle,
                        ),
                        SizedBox(
                          height: 60.0,
                          child: AutoSizeText(
                            weight.toString(),
                            style: kNumberTextStyle,
                            maxFontSize: 50.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                  constWeight = weight;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                  constWeight = weight;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                  constAge = age;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                  constAge = age;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              if (selectedGender == Gender.male ||
                  selectedGender == Gender.female) {
                if (selectedUnits == Units.feets) {
                  height = feets * 12;
                  height = height + inches;
                }
                constHeight = height;
                constWeight = weight;
                constAge = age;
                CalculatorBrain calc = CalculatorBrain(
                    height: height, weight: weight, units: selectedUnits);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      resultBMI: calc.calculateBMI(),
                      result: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              } else {
                Alert(
                  context: context,
                  type: AlertType.warning,
                  title: "Gender!!",
                  desc:
                      "You have not selected the gender. Please select the gender and then proceed.",
                  style: alertStyle,
                  buttons: [
                    DialogButton(
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Go Back',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: kCalculateButtonColor,
                    ),
                  ],
                ).show();
              }
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            ListTile(
              title: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(''),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text(
                'Change Units',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                setState(() {
                  unitsDropDown = true;
                });
              },
            ),
            getUnitsInfo(),
            ListTile(
              leading: Icon(Icons.add),
              title: Text(
                'Change Theme',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            getListTile(),
            Column(
              children: <Widget>[
                Text(
                  'BMI CALCULATOR',
                  style: kLabelStyle,
                ),
                Text(
                  'Developed by Parth Industries',
                  style: kLabelStyle,
                ),
                Text(
                  'Version: 1.0.1',
                  style: kLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
