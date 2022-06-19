
import 'package:flutterfire_samples/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_samples/profile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 1 ;
  final List<Widget> screens = [
    DashboardScreen(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: screens, index: currentIndex,),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Page 1'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Page 2')
          ],
          onTap: (value) => setState(() {
            currentIndex = value;
          })),
    );
  }
}