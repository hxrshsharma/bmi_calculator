import 'package:bmi_calculator/Input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Addbutton extends StatelessWidget {
  const Addbutton({this.add, super.key});
  final Function? add;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: inActiveColor,
        shape: const CircleBorder(),
      ),
      onPressed: ()=>add!(),
      child: const Icon(
        FontAwesomeIcons.plus,
        size: 50,
        color: Colors.white,
      ),
    );
  }
}
