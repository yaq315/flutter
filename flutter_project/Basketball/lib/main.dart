import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Score App',
      home: ScorePage(),
    );
  }
}

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  int teamAScore = 0;
  int teamBScore = 0;

  void addPoints(String team, int points) {
    setState(() {
      if (team == 'A') {
        teamAScore += points;
      } else {
        teamBScore += points;
      }
    });
  }

  void resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('points'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'group A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAScore',
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => addPoints('A', 1),
                      child: Text('point 1'),
                    ),
                    ElevatedButton(
                      onPressed: () => addPoints('A', 2),
                      child: Text('point 2'),
                    ),
                    ElevatedButton(
                      onPressed: () => addPoints('A', 3),
                      child: Text('point 3'),
                    ),
                  ],
                ),
              ),
              VerticalDivider(
                thickness: 2,
                color: Colors.black54,
                width: 20,
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'group B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBScore',
                      style: TextStyle(fontSize: 50),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => addPoints('B', 1),
                      child: Text('point 1'),
                    ),
                    ElevatedButton(
                      onPressed: () => addPoints('B', 2),
                      child: Text('point 2'),
                    ),
                    ElevatedButton(
                      onPressed: () => addPoints('B', 3),
                      child: Text('point 3'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: resetScores,
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('return to zero'),
          )
        ],
      ),
    );
  }
}
