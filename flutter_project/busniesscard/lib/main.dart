import 'package:flutter/material.dart';

void main() {
  runApp(const MyBusinessCardApp());
}

class MyBusinessCardApp extends StatelessWidget {
  const MyBusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: const BusinessCardPage(),
    );
  }
}

class BusinessCardPage extends StatelessWidget {
  const BusinessCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[700],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/images/ballers.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                ' coach amro',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'ballers academy',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                  letterSpacing: 2,
                ),
              ),
              const Divider(
                height: 30,
                thickness: 1,
                color: Colors.white54,
                indent: 40,
                endIndent: 40,
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.phone, color: Colors.teal),
                  title: const Text('+966 55 123 4567'),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.email, color: Colors.teal),
                  title: const Text('www.ballersaqaba.com'),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: const Icon(Icons.location_on, color: Colors.teal),
                  title: const Text('aqaba.jordan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
