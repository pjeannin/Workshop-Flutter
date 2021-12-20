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
    setState(() {
      _numberOfClicks++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playerName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Number of clicks'),
            Text('$_numberOfClicks'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: ElevatedButton(
                onPressed: _click,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.add),
                    ),
                    Text('Click me')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
