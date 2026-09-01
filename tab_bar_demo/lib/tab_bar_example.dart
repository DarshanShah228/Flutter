import 'package:flutter/material.dart';

import 'admin_dashboard.dart';
import 'buttons_example.dart';
import 'grid_view.dart';

class tab_bar extends StatelessWidget {
  const tab_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tab Bar"),

          //property of tab bar
          bottom: TabBar(
              tabs: [
                Text("Chats"),
                Text("Status"),
                Text("Call"),
              ]
          ),
        ),
        body: TabBarView(
          children: [
            ButtonsExample(),
            gridview(),
            AdminDashboard(),
          ],
        ),
      ),
    );
  }
}
