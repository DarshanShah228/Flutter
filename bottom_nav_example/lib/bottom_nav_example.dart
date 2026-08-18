import 'package:bottom_nav_example/whatsapp.dart';
import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'login_demo.dart';

class BottomNavExample extends StatefulWidget {
  BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int currentI = 0;

  void indexChange(int index){
    setState(() {
      currentI=index;
    });
  }

  List screens=[
    //class name to redirect the page
    login_demo(),
    whatsapp(),
    AdminDashboard(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentI],
      bottomNavigationBar: BottomNavigationBar(
          onTap: indexChange,
          currentIndex: currentI,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                backgroundColor: Colors.black,
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.task),
                backgroundColor: Colors.green,
                label: "Task"
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                backgroundColor: Colors.red,
                label: "Profile"
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                backgroundColor: Colors.red,
                label: "Profile2"
            ),
          ]
      ),
    );
  }
}
