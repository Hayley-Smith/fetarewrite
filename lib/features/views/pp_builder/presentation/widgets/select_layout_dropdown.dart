import 'package:flutter/material.dart';

class SelectLayoutDropdown extends StatefulWidget {
  const SelectLayoutDropdown({Key key}) : super(key: key);

  @override
  State<SelectLayoutDropdown> createState() => _SelectLayoutDropdownState();
}

class _SelectLayoutDropdownState extends State<SelectLayoutDropdown> {
  String dropdownValue = 'Title and Chart';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.green,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'Title and Chart',
        'Four by Four',
        'One over Two',
        'Two over one'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
