import 'package:flutter/material.dart';
import 'package:workshop_flutter/screens/game.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    var playerName = '';

    _changePage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Game(playerName: playerName)),
      );
    }
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column( // TODO: Center the content
          children: [ // TODO: Add a TextField to get the player name and a play button that calls _changePage()
              const Text("Home page")
          ],
        ),
      ),
    );
  }
}
