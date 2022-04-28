import 'package:flutter/material.dart';

class XAxisDropdown extends StatefulWidget {
  const XAxisDropdown({Key key}) : super(key: key);

  @override
  State<XAxisDropdown> createState() => _XAxisDropdownState();
}

class _XAxisDropdownState extends State<XAxisDropdown> {
  String dropDownValue = "Choose X Axis";

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(
        height: 2,
        color: Colors.green,
      ),
      style: const TextStyle(color: Colors.green),
      onChanged: (String newValue) {
        setState(
          () {
            dropDownValue = newValue;
          },
        );
      },
      elevation: 16,
      icon: Icon(Icons.arrow_downward),
      value: dropDownValue,
      items: <String>[
        'Choose X Axis',
        'Title and Chart',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
          ),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
