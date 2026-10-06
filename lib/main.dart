import 'package:flutter/material.dart';

void main() {
  runApp(const AgelessCompanionApp());
}

class AgelessCompanionApp extends StatelessWidget {
  const AgelessCompanionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ageless Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // False = Youth/Gen-Z Mode (Text focus), True = Elder-Care Mode (Voice focus)
  bool isElderMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isElderMode ? 'Companion Mode 🪑' : 'Ageless Zen 🕶️'),
        actions: [
          Switch(
            value: isElderMode,
            onChanged: (value) {
              setState(() {
                isElderMode = value;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isElderMode
                  ? 'Big Voice Buttons\nComing Soon!'
                  : 'Sleek Chat Interface\nComing Soon!',
              style: TextStyle(fontSize: isElderMode ? 32 : 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}