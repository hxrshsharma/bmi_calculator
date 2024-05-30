// ignore: file_names
import 'package:flutter/material.dart';


class Extra extends StatelessWidget {
  const Extra({
    super.key,
    required this.title,
    required this.data,
    required this.color,
    required this.row,
  });
  final String title;
  final int data;
  final Color color;
  final Widget row; 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          Text(
            data.toString(),
            style: const TextStyle(
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          row
          // Row(
          //   children: [
          //     TextButton(
          //       style: TextButton.styleFrom(
          //         backgroundColor: inActiveColor,
          //         shape: const CircleBorder(),
          //       ),
          //       onPressed: null,
          //       child: const Icon(
          //         FontAwesomeIcons.minus,
          //         size: 50,
          //         color: Colors.white,
          //       ),
          //     ),
          //     TextButton(
          //       style: TextButton.styleFrom(
          //         backgroundColor: inActiveColor,
          //         shape: const CircleBorder(),
          //       ),
          //       onPressed: () => (),
          //       child: const Icon(
          //         FontAwesomeIcons.plus,
          //         size: 50,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
