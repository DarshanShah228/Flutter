import 'package:flutter/material.dart';
import 'package:tab_bar_demo/whatsapp.dart';
import 'admin_dashboard.dart';
import 'camera.dart';
import 'grid_view.dart';

class task_whatsapp extends StatelessWidget {
  const task_whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
          actions: [
            Icon(Icons.search,color: Colors.white,),
            Icon(Icons.menu,color: Colors.white,),
          ],

          //property of tab bar
          bottom: TabBar(
              tabs: [
                Icon(Icons.add_a_photo,color: Colors.white,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Chats" ,style: TextStyle(color: Colors.white),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 10,
                      ),
                    )
                  ],
                ),
                Text("Status",style: TextStyle(color: Colors.white),),
                Text("Call",style: TextStyle(color: Colors.white),),
              ]
          ),
        ),
        body: TabBarView(
          children: [
            carmera(),
            whatsapp(),
            gridview(),
            AdminDashboard(),
          ],
        ),
      ),
    );
  }
}
