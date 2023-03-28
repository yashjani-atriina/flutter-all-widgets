import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  OpacityWidget({Key? key}) : super(key: key);

  @override
  State<OpacityWidget> createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity Widget"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: const Center(child: Text("Item 1")),
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.green,
                child: const Center(child: Text("Item 2")),
              ),
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: const Center(child: Text("Item 3")),
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.cyan,
              child: const Center(child: Text("Item 4")),
            ),
            AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: 0.5,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.brown,
                child: const Center(child: Text("Item 5")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
