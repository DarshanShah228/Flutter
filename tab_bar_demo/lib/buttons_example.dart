import 'package:flutter/material.dart';

import 'grid_view.dart';

class ButtonsExample extends StatelessWidget {
  ButtonsExample({super.key});

  TextEditingController name = TextEditingController();

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
          ),
          SizedBox(
            width: 150,
            child: TextField(
                controller: name,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: (){
                  if(name.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            showCloseIcon: true,
                            duration: Duration(seconds: 4),
                            backgroundColor: Colors.red,
                            content: Text("please fill all details")
                        )
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            showCloseIcon: true,
                            duration: Duration(seconds: 4),
                            backgroundColor: Colors.green,
                            content: Text("Succesfully Logged In")
                        )
                    );
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        showCloseIcon: true,
                        duration: Duration(seconds: 4),
                        backgroundColor: Colors.green,
                        content: Text("Succesfully Logged In")
                    )
                  );
                },
                child: Text("SnakBar"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
