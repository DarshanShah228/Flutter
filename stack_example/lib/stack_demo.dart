import 'package:flutter/material.dart';

class stackdemo extends StatelessWidget {
  const stackdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111613),
      body: Center(
        child: SizedBox(
          width: 320,
          height: 350,
          child: Stack(
            children: [

              // Beach Image
              Positioned(
                top: 20,
                left: 17,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_P4oO3O2iTVgxs9p8oC3GRvBRTY-grZUdegX1E70FkcCiSKlzDtN9hOSm&s=10",
                    width: 286,
                    height: 145,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Login Container
              Positioned(
                top: 135,
                left: 75,
                child: Container(
                  width: 176,
                  height: 88,
                  padding: const EdgeInsets.all(11),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: Column(
                    children: [

                      // Username
                      SizedBox(
                        height: 29,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 7),

                      // Password
                      SizedBox(
                        height: 29,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3),
                              borderSide: const BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Arrow Button
              Positioned(
                top: 210,
                left: 142,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                    color: Color(0xff18B5D4),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
