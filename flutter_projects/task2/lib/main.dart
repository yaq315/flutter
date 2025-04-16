import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// task1
  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF1F8E9), 
        appBar: AppBar(
          title: const Text('Students List'),
          backgroundColor: Colors.green[400],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                ' Vertical List of Students',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),

            
              Expanded(
                child: ListView(
                  children: [
                    studentCard('Ahmed', 'assets/images/stu2.jpeg'),
                    studentCard('Fatima', 'assets/images/stu1.jpeg'),
                    studentCard('Omar', 'assets/images/stu4.jpeg'),
                  ],
                ),
              ),

              const Divider(),
              const Text(
                '➡️ Horizontal List of Students',
                style: TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

         
     SizedBox(
  height: 130,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
      Container(
        width: 250,
        child: studentCard('Ahmed', 'assets/images/student1.jpg'),
      ),
      Container(
        width: 250,
        child: studentCard('Fatima', 'assets/images/student2.jpg'),
      ),
      Container(
        width: 250,
        child: studentCard('Omar', 'assets/images/student3.jpg'),
      ),
    ],
  ),
),

            ],
          ),
        ),
      ),
    );
  }

 
  Widget studentCard(String name, String imgPath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(8),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                imgPath,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 15),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Cairo',
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 10),
            const Icon(Icons.school, color: Colors.green),
          ],
        ),
      ),
    );
  }

}