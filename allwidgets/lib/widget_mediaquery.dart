import 'package:flutter/material.dart';

class MediaQueryWidget extends StatefulWidget {
  MediaQueryWidget({Key? key}) : super(key: key);

  @override
  State<MediaQueryWidget> createState() => _MediaQueryWidgetState();
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mediaquery Widget"),
        ),
        body: OrientationBuilder(builder: (context, snapshot) {
          if (screenSize.height > 400) {
            return Container(
              child: Text("This is bigger screen"),
            );
          } else {
            return Container(
              child: Text("This is smaller screen"),
            );
          }
        })
        // Container(
        //   child: Text("$screenSize"),
        // ),
        );
  }
}
