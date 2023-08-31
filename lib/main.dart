import 'package:flutter/material.dart';

void main() {
  runApp(pointCounter());
}

class pointCounter extends StatefulWidget {
  @override
  State<pointCounter> createState() => _pointCounterState();
}

class _pointCounterState extends State<pointCounter> {
  //const pointCounter({super.key});
  int teamAPoint = 0;

  int teamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
          titleTextStyle: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$teamAPoint ',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoint++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamAPoint += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$teamBPoint',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoint++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 2;
                          });
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(140, 50)),
                        onPressed: () {
                          setState(() {
                            teamBPoint += 3;
                          });
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  teamAPoint = 0;
                  teamBPoint = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
