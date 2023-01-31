import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: const Text(
              'Random Name Generator',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: const MainScreen()),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

final names = [
  'Franklin Trevino',
  'Charley Townsend',
  'Milton Evans',
  'Arthur Goodwin',
  'Jean Montoya',
  'Augustus Whitney',
  'Garth Archer',
  'Freddie Meadows',
  'Christian Hull',
  'Newton Knox',
  'Curt Conley',
  'Cyrus Bennett',
  'Kenton Drake',
  'Trent Esparza',
  'Kyle Grimes',
  'Andrew Gonzalez',
  'Deon Prince',
  'Lionel Patrick',
  'Hung Christensen',
  'Ahmad Irwin',
  'Erich Edwards',
  'Guadalupe Calderon',
  'Lemuel Santos',
  'Stuart Duffy',
  'Jonathon Powers',
  'Cruz Diaz',
  'Herman Maynard',
  'Ian Huffman',
  'Kevin Higgins',
  'Byron Padilla',
  'Caleb Blanchard',
  'Brock Ramos',
];

int randomNumber = 0;

void randomNum() {
  randomNumber = Random().nextInt(names.length);
}

bool isClicked = false;

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isClicked
              ? Text(
                  names[randomNumber],
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                )
              : const Text(
                  'Press the button',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed: (() {
              setState(() {
                randomNum();
                isClicked = true;
              });
            }),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: const Text('Generate Name'),
          )
        ],
      ),
    );
  }
}
