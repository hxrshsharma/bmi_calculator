import "package:flutter/material.dart";

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color,this.onPress, this.cardChid});

  final Widget? cardChid;
  final Color color;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onPress!(),
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChid,
      ),
    );
  }
}
