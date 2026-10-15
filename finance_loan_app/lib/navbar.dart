import 'package:finance_loan_app/profile_page.dart';
import 'package:flutter/material.dart';

import 'Apply_loan.dart';
import 'RecentTransation_Navbar.dart';
import 'loan_dashboard.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  int current=0;
  void indexChange(int index) {
    setState(() {
      current = index;
    });
  }
  List<Widget> screens = [
    RecenttransationNavbar(),
    LoanDashboard(),
    profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[current],
      bottomNavigationBar: BottomNavigationBar(
          onTap: indexChange,
          currentIndex: current,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.home),
                backgroundColor: Colors.black,
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag),
                backgroundColor: Colors.green,
                label: "Loan"
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                backgroundColor: Colors.red,
                label: "Profile"
            ),
          ]
      ),
    );
  }
}
