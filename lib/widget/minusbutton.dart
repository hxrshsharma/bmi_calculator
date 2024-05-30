import 'package:bmi_calculator/Input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Minusbutton extends StatelessWidget {
  const Minusbutton({this.minus,super.key});
  final Function? minus;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: inActiveColor,
        shape: const CircleBorder(),
      ),
      onPressed: ()=>minus!(),
      child: const Icon(
        FontAwesomeIcons.minus,
        size: 50,
        color: Colors.white,
      ),
    );
  }
}
