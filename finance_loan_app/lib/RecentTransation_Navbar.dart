import 'package:flutter/material.dart';

class RecenttransationNavbar extends StatefulWidget {
  const RecenttransationNavbar({super.key});

  @override
  State<RecenttransationNavbar> createState() => _RecenttransationNavbarState();
}

class _RecenttransationNavbarState extends State<RecenttransationNavbar> {
  int current=0;
  void indexChange(int index) {
    setState(() {
      current = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,

      //Body
      body:Column(
        children: [
          Row(
            children: [
              //Title
              Column(
                children: [
                  //Welcome
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 10, right: 80),
                    child: Text("Welcome,", style: TextStyle(color: Colors.white70, fontSize: 25),),
                  ),
                  //Name
                  Padding(
                    padding: const EdgeInsets.only( left: 20),
                    child: Text("Darshan Shah", style: TextStyle(color: Colors.white70, fontSize: 30),),
                  ),
                ],
              ),


              // image of person
            ],
          ),
          //Card-1

          //Card-2

        ],
      ),

      //Nav Bar
      bottomNavigationBar: BottomNavigationBar(
          onTap: indexChange,
          currentIndex: current,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Loans"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
