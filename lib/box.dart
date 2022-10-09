import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final child;
  const Box({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Center(child: child),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          // darker shadow on the bottom right
          BoxShadow(
              color: Color(0X402D8A80),
              blurRadius: 2,
              offset: const Offset(2, 2),
              spreadRadius: 0.5),
          // lighter shadow on the top left
          /*const BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
              spreadRadius: 1.0),*/
        ],
        /*gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade600,
            Colors.grey.shade500,
            Colors.grey.shade400,
            Colors.grey.shade200,
          ],
          stops: [
            0,
            0.1,
            0.3,
            1,
          ],
        ),*/
      ),
    );
  }
}
