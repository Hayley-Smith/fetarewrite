import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/layouts/two_by_two.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/select_layout_dropdown.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_card.dart';
import 'package:add_feature_practice/features/views/pp_builder/presentation/widgets/slide_deck.dart';
import 'package:flutter/material.dart';

import 'layouts/layout.dart';

// ignore: todo
//TODO: add a deck preview button that links to a page that displays the current deck
// ignore: must_be_immutable
class MainPanel extends StatefulWidget {
  Layout layout = TwoByTwoLayout();
  SlideDeck deck;
  MainPanel({Key key, this.deck}) : super(key: key);

  @override
  State<MainPanel> createState() => _MainPanelState();
}

class _MainPanelState extends State<MainPanel> {
  void _changeLayout(layout) {
    widget.layout = layout;
  }

  Future<void> _newSlideDialog() async {
    return showDialog<Layout>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Choose Layout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SelectLayoutDropdown(changeLayout: _changeLayout),
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
              children: [
<<<<<<< HEAD
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Fellow Editors Email',
                    ),
                  ),
                ),
=======
                TextField(),
>>>>>>> 7d94de8cea07f140b880d08eaf2e59bd60063065
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Send Invite'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Cancel'),
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Recipient Email',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Add a note',
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Send Invite'),
              onPressed: () {
                Navigator.of(context).pop();
                _newSlideDialog();
<<<<<<< HEAD
              },
            ),
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
                _newSlideDialog();
=======
>>>>>>> 7d94de8cea07f140b880d08eaf2e59bd60063065
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'C:/',
                    ),
                  ),
                ),
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
            TextButton(
              child: const Text('Cancel'),
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
    final deckTitleController = TextEditingController();

    @override
    void dispose() {
      deckTitleController.dispose();
      super.dispose();
    }

    ;

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
                      height: MediaQuery.of(context).size.height * .275,
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
        onPressed: () async {
          await _newSlideDialog();
          setState(() {
            widget.deck = SlideDeck(listOfSlides: [
              ...widget.deck.listOfSlides,
              SlideCard(
                layout: widget.layout,
              ),
            ]);
          });
          widget.layout = TwoByTwoLayout();
        },
      ),
    );
  }
}
