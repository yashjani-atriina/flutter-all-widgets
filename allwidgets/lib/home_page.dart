import 'package:allwidgets/widget_autocomplete.dart';
import 'package:allwidgets/widget_gridview.dart';
import 'package:allwidgets/widget_mediaquery.dart';
import 'package:allwidgets/widget_opacity.dart';
import 'package:allwidgets/widget_richtext.dart';
import 'package:allwidgets/widget_transform.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GridViewWidget(),
                  ),
                );
              },
              child: const Text("GridView"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MediaQueryWidget(),
                  ),
                );
              },
              child: const Text("Mediaquery"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RichTextWidget(),
                  ),
                );
              },
              child: const Text("Richtext"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AutoCompleteWidget(),
                  ),
                );
              },
              child: const Text("Autocomplete"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OpacityWidget(),
                  ),
                );
              },
              child: const Text("Opacity"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TransformWidget(),
                  ),
                );
              },
              child: const Text("Transform"),
            ),
          ],
        ),
      ),
    );
  }
}
