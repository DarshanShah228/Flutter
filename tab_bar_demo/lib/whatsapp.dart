import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  whatsapp({super.key});

  List icon=[
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
    Icon(Icons.account_circle,size: 45,),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: icon.length,
          itemBuilder: (context,index)
          {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Container(
                  width: 300,
                  height: 70,
                  child: Row(
                    children: [
                      icon[index],
                      Text("Contact Name \n Hello Good Morning"),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text("12:00 PM"),
                          Icon(Icons.looks_one_rounded,color: Colors.green),
                      ]
                                        ),
                    ),

                    ],
                  ),

                ),

              ),
            );
          }
      ),
    );
  }
}
