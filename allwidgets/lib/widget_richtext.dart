import 'package:flutter/material.dart';

class RichTextWidget extends StatefulWidget {
  RichTextWidget({Key? key}) : super(key: key);

  @override
  State<RichTextWidget> createState() => _RichTextWidgetState();
}

class _RichTextWidgetState extends State<RichTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rich text widget"),
      ),
      body: Container(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text:
                    "The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan",
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text:
                    "objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or",
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text:
                    "might all be displayed on the same line depending on the layout constraints",
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: "line ",
                style: TextStyle(color: Colors.purple),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
