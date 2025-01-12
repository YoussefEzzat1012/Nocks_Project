import 'package:flutter/material.dart';


class Selectdestinationwidget extends StatefulWidget {
     final Function(String) onDestinationSelected;

    Selectdestinationwidget(this.onDestinationSelected);
  @override
  _SelectdestinationwidgetState createState() => _SelectdestinationwidgetState();
}

class _SelectdestinationwidgetState extends State<Selectdestinationwidget> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];
  final Map<String, bool> checkedStates = {};

  @override
  void initState() {
    super.initState();
    // Initialize the checkedStates map
    for (var item in items) {
      checkedStates[item] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
          children: items.map((item) {
            return CheckboxListTile(
              title: Text(item),
              value: checkedStates[item],
              onChanged: (bool? value) {
                setState(() {
                  checkedStates[item] = value ?? false;
                   if (value == true) {
                  widget.onDestinationSelected(item);
                  Navigator.of(context).pop();
                }
                });
              },
            );
          }).toList(),
        ),
    );
  }
}
