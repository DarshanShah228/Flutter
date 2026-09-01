import 'package:flutter/material.dart';

import 'grid_view.dart';

class ButtonsExample extends StatelessWidget {
  const ButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (Context)=> gridview() ));
              },
              child: Text("Next Page"),
          )
        ],
      ),
    );
  }
}
