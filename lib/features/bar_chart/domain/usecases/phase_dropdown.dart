import 'package:flutter/material.dart';

class PhaseDropDown extends StatefulWidget {
  const PhaseDropDown({Key key}) : super(key: key);

  @override
  State<PhaseDropDown> createState() => _PhaseDropDownState();
}

class _PhaseDropDownState extends State<PhaseDropDown> {
  String dropdownValue = "Phase";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ), // Container
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Phase', 'Title and Chart']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          onTap: () {},
        ); //DropdownMenuItem
      }).toList(),
    ); //DropdownButton
  }
}
