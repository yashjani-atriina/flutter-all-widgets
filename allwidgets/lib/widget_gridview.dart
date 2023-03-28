import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  GridViewWidget({Key? key}) : super(key: key);

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview"),
      ),
      body: Container(
        child:
            // GridView.builder(
            //   itemCount: 10,
            //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2),
            //   itemBuilder: (context, index) {
            //     return Container(
            //       color: Colors.amber,
            //       height: 10,
            //       width: 10,
            //       child: Text("Item ${index + 1}"),
            //     );
            //   },
            // ),
            GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          children: [
            gridviewContainer(Colors.amber, 10, 10, const Text("1")),
            gridviewContainer(Colors.blue, 10, 10, const Text("2")),
            gridviewContainer(Colors.green, 10, 10, const Text("3")),
            gridviewContainer(Colors.red, 10, 10, const Text("4")),
            gridviewContainer(Colors.black, 10, 10, const Text("5")),
            gridviewContainer(Colors.yellow, 10, 10, const Text("6")),
            gridviewContainer(Colors.indigo, 10, 10, const Text("7")),
            gridviewContainer(Colors.purple, 10, 10, const Text("8")),
          ],
        ),
      ),
    );
  }
}

Widget gridviewContainer(color, double height, double width, Text text) {
  return Container(
    color: color,
    height: height,
    width: width,
    child: text,
  );
}
