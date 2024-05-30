// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:bmi_calculator/brains.dart';
import 'package:bmi_calculator/results_page.dart';
import 'package:bmi_calculator/widget/ReusableCard.dart';
import 'package:bmi_calculator/widget/Gender.dart';
import 'package:bmi_calculator/widget/addbutton.dart';
import 'package:bmi_calculator/widget/minusbutton.dart';
import 'package:bmi_calculator/widget/weightNheight.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

const bottomHeigth = 80.0;
const inActiveColor = Color(0xff111328);
const activeColor = Color(0xff1D1E33);
// const inActiveColor = Colors.red;
// const activeColor = Colors.greenAccent;

enum Gen { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gen? chosenGen;
  int height = 180;
  int age = 19;
  int weight = 74;
  // Color maleColor = inActiveColor;
  // Color femaleColor = inActiveColor;

  // void checkGen(Gen gender) {
  //   switch (gender) {
  //     case Gen.male:
  //       maleColor = maleColor == inActiveColor ? activeColor : inActiveColor;
  //       femaleColor = maleColor == activeColor ? inActiveColor : femaleColor;
  //     case Gen.female:
  //       femaleColor =femaleColor == inActiveColor ? activeColor : inActiveColor;
  //       maleColor = femaleColor == activeColor ? inActiveColor : maleColor;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => setState(() {
                      // checkGen(Gen.male);
                      chosenGen = Gen.male;
                    }),
                    child: ReusableCard(
                      onPress: () => setState(() {
                        chosenGen = Gen.male;
                      }),
                      // color: maleColor,
                      color:
                          chosenGen == Gen.male ? activeColor : inActiveColor,
                      cardChid: const GenderCard(
                        gender: "Male",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () => setState(() {
                      chosenGen = Gen.female;
                    }),
                    // color: femaleColor,
                    color:
                        chosenGen == Gen.female ? activeColor : inActiveColor,
                    cardChid: const GenderCard(
                      gender: "Female",
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              cardChid: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "HEIGHT",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "CM",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayColor: const Color(0xffEB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue.round();
                          },
                        );
                      },
                      min: 120.0,
                      max: 220.0,
                      // activeColor: const Color(0xffEB1555),
                      activeColor: Colors.white,
                      inactiveColor: const Color(0xff8D8E98),
                      thumbColor: const Color(0xffEB1555),
                    ),
                  ),
                ],
              ),
              color: const Color(0xff1D1E33),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: Extra(
                    title: "WEIGHT",
                    data: weight,
                    color: const Color(0xff1D1E33),
                    row: Row(
                      children: [
                        Minusbutton(
                          minus: () {
                            weight = weight <= 1 ? 1 : weight;
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        Addbutton(
                          add: () {
                            setState(() {
                              weight++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Extra(
                    title: "AGE",
                    data: age,
                    color: const Color(0xff1D1E33),
                    row: Row(
                      children: [
                        Minusbutton(
                          minus: () {
                            age = age <= 1 ? 1 : age;
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        Addbutton(
                          add: () => setState(() {
                            age++;
                          }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              // ignore: unused_local_variable
              Brains calc = Brains(height, weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Result(
                            bmiResult: calc.result(),
                            resultText: calc.getResult(),
                            interpretation: calc.getInterpretation(),
                          )));
            },
            child: Container(
              color: const Color(0xffEB1555),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomHeigth,
              child: const Center(
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
