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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                onChanged: (value) => playerName = value,
                onSubmitted: (value) => _changePage(),
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _changePage,
              child: const Text('Play'),
            )
          ],
        ),
      ),
    );
  }
}
