import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  final String playerName;

  const Game({Key? key, required this.playerName}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {

  var _numberOfClicks = 0;

  _click() {
    // TODO: Implement click function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'), // TODO: change to player name
      ),
      body: Center(
        child: Column( // TODO: Center the content
          children: [ // Todo: Add a text 'Number of clicks', a text that display the number of clicks, and a button that calls the _click() method
            const Text('Game page'),
          ],
        ),
      ),
    );
  }
}
