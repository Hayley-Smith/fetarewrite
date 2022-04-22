import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/title_content_chart.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/select_layout_dropdown.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_card.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainPanel extends StatefulWidget {
  SlideDeck deck;
  MainPanel({Key key, this.deck}) : super(key: key);

  @override
  State<MainPanel> createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose Layout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SelectLayoutDropdown(),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _shareDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Share Editing Privileges'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [TextField()],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Send Invite'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _distributeDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Recipients Email'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [TextField()],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Send Invite'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _saveDeckDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Save Deck'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [],
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(
              Icons.email_outlined,
            ),
            onPressed: () {
              setState(() {
                _distributeDialog();
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person_add,
            ),
            onPressed: () {
              setState(
                () {
                  _shareDialog();
                },
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.save_alt,
            ),
            onPressed: () {
              setState(() {
                _saveDeckDialog();
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Deck Name",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                        label: Text(
                          "Edit",
                        ),
                      ),
                    ],
                  ),
                  widget.deck,
                  Card(
                    color: Colors.white,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .25,
                      child: widget.deck,
                    ),
                  ),
                ],
              ),
            ],
          ),
          color: Colors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add_box_outlined,
        ),
        onPressed: () {
          print(widget.deck.listOfSlides.length);
          setState(() {
            widget.deck = SlideDeck(listOfSlides: [
              ...widget.deck.listOfSlides,
              SlideCard(
                layout: TitleContentChartLayout(),
              ),
            ]);
          });

          print(widget.deck.listOfSlides.length);
          //_showMyDialog();
        },
      ),
    );
  }
}
