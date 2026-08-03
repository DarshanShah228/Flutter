import 'package:flutter/material.dart';

class images_demo extends StatelessWidget {
  const images_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("../assets/images/gratisography-augmented-reality-800x525.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQp1r-hUHhLxHH_FzhvaaLdVER5q7-25qL9Acruqmw8aQ&s=10",
                width: 350,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Image.asset("../assets/images/Dog.jpg",
                width: 500,
                height: 500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
