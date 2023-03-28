import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatefulWidget {
  AutoCompleteWidget({Key? key}) : super(key: key);

  @override
  State<AutoCompleteWidget> createState() => _AutoCompleteWidgetState();
}

class _AutoCompleteWidgetState extends State<AutoCompleteWidget> {
  List<String> elements = <String>["first", "second", "third", "fourth"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Auto Complete widget"),
      ),
      body: Container(
        child: Autocomplete<String>(
          // onSelected: (String selection) {
          //   debugPrint('You just selected $selection');
          // },
          onSelected: (option) {
            print(elements);
          },
          optionsBuilder: (TextEditingValue texteditingvalue) {
            if (texteditingvalue.text == '') {
              return const Iterable.empty();
            }
            return elements.where(
              (String option) {
                return option.contains(texteditingvalue.text.toLowerCase());
              },
            );
          },
        ),
      ),
    );
  }
}
