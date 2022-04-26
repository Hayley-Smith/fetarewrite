import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/two_by_two.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/title_content_chart.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SelectLayoutDropdown extends StatefulWidget {
  Function changeLayout;
  SelectLayoutDropdown({Key key, this.changeLayout})
      : super(
          key: key,
        );

  @override
  State<SelectLayoutDropdown> createState() => _SelectLayoutDropdownState();
}

class _SelectLayoutDropdownState extends State<SelectLayoutDropdown> {
  void select() {
    switch (dropdownValue) {
      case "Two by Two":
        {
          widget.changeLayout(TwoByTwoLayout());
          print("two by two layout selected");
        }
        break;

      case "Title/Content/Chart":
        {
          widget.changeLayout(TitleContentChartLayout());
          print("title content chart selected");
        }
        break;

      default:
        {
          print("Invalid choice");
        }
        break;
    }
  }

  String dropdownValue = 'Two by Two';

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
          select();
        });
      },
      items: <String>[
        'Two by Two',
        'Title/Content/Chart',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
