import 'package:flutter/material.dart';
import 'dart:math';

class TransformWidget extends StatefulWidget {
  TransformWidget({Key? key}) : super(key: key);

  @override
  State<TransformWidget> createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transform Widget"),
      ),
      body: Transform.rotate(
        angle: pi / 4,
        child: const Icon(Icons.account_box_rounded),
      ),

      // Container(
      //   child: Container(
      //     height: 500,
      //     width: 500,
      //     color: Colors.black,
      //     child: Transform(
      //       alignment: Alignment.topRight,
      //       transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
      //       child: Container(
      //         padding: const EdgeInsets.all(8.0),
      //         color: const Color(0xFFE8581C),
      //         child: const Text('Apartment for rent!'),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
