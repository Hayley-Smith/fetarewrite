import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/layout.dart';
import 'package:flutter/material.dart';

class FourByFourLayout extends Layout {
  FourByFourLayout({Key key});

  @override
  State<FourByFourLayout> createState() => _FourByFourLayoutState();
}

class _FourByFourLayoutState extends State<FourByFourLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Slide Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxHeight * .4,
                width: constraints.maxWidth * .4,
                child: Card(
                  color: Colors.grey[100],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * .4,
                width: constraints.maxWidth * .4,
                child: Card(
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: constraints.maxHeight * .4,
                width: constraints.maxWidth * .4,
                child: Card(
                  color: Colors.grey[100],
                ),
              ),
              SizedBox(
                height: constraints.maxHeight * .4,
                width: constraints.maxWidth * .4,
                child: Card(
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
