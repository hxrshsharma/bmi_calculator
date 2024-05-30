import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;  
  Result({required this.bmiResult,required this.interpretation,required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 1,
              child: Text(
                "Result",
                style: TextStyle(fontSize: 35.0),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: const EdgeInsets.all(15.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        resultText,
                        style:const TextStyle(
                          color: Colors.green,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        bmiResult,
                        style: const TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        interpretation,
                        style:const TextStyle(
                          fontSize: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Expanded(
                  child: Container(
                color: const Color(0xffEB1555),
                margin: const EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
                child: const Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}