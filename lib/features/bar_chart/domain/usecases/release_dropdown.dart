import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ReleaseDropdown extends StatefulWidget {
  final List<String> releaseList;
  const ReleaseDropdown({Key key, this.releaseList}) : super(key: key);

  @override
  State<ReleaseDropdown> createState() => _ReleaseDropdownState();
}

class _ReleaseDropdownState extends State<ReleaseDropdown> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.releaseList.last;
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 5, 71, 5)),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: widget.releaseList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          onTap: () {
            dropdownValue = value;
          },
        );
      }).toList(),
    );
  }
}
