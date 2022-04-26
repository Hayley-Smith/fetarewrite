import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/layout.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/select_layout_dropdown.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SlideCard extends StatefulWidget {
  Layout layout;
  SlideCard({Key key, @required this.layout}) : super(key: key);

  SlideCard.empty({
    Key key,
  }) : super(key: key);

  @override
  State<SlideCard> createState() => _SlideCardState();
}

class _SlideCardState extends State<SlideCard> {
  void _changeLayout(layout) {
    widget.layout = layout;
  }

  Future<void> _showEditSlideDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Slide'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SelectLayoutDropdown(changeLayout: _changeLayout),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () async {
        await _showEditSlideDialog();
        setState(() {});
      },
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Card(
          child: widget.layout,
          elevation: 30,
        ),
      ),
    );
  }
}
