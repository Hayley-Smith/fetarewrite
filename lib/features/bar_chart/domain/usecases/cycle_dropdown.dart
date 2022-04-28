import 'package:add_feature_practice/features/bar_chart/domain/entities/data_item.dart';
import 'package:flutter/material.dart';

class CycleDropDown extends StatefulWidget {
  final List<String> cycleList;
  const CycleDropDown({Key key, this.cycleList});

  @override
  State<CycleDropDown> createState() => _CycleDropDownState();
}

class _CycleDropDownState extends State<CycleDropDown> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.cycleList.last;

    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: widget.cycleList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
          onTap: () {},
        );
      }).toList(),
    );
  }
}
