import 'package:flutter/material.dart';
import './Input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff090e21),
          appBarTheme: const AppBarTheme(
            color: Color(0xff0A0E21),
          ),
        ),
        // theme: ThemeData(
        //     appBarTheme: const AppBarTheme(
        //   color: Color(0xff0A0E21),
        // ),
        // scaffoldBackgroundColor:const Color(0xff090e21),
        // textTheme:const TextTheme(bodyMedium: TextStyle(color: Colors.white))
        // ),
        initialRoute: '/',
        routes: {
          '/': (context) => const InputPage(),
        });
  }
}
