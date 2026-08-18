import 'package:bottom_nav_example/whatsapp.dart';
import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'login_demo.dart';

class AppointmentTask extends StatefulWidget {
  AppointmentTask({super.key});

  @override
  State<AppointmentTask> createState() => _AppointmentTaskState();
}

class _AppointmentTaskState extends State<AppointmentTask> {
  int curret = 0;

  void indexChange(int index) {
    setState(() {
      curret = index;
    });
  }

  List screens = [
    // class name to redirect the page
    login_demo(),
    AppointmentPage(),
    whatsapp(),
    AdminDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.subdirectory_arrow_left,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'My Appointment',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),

      body: screens[curret],

      // bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        onTap: indexChange,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        currentIndex: curret,
        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // backgroundColor: Colors.black,
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined),
            // backgroundColor: Colors.black,
            label: "Booking",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.offline_bolt_outlined),
            // backgroundColor: Colors.black,
            label: "Others",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            // backgroundColor: Colors.black,
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

// Appointment Page
class AppointmentPage extends StatelessWidget {
  AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            children: [
              // 1. card
              Center(
                child: Container(
                  width: 350, height: 250, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green,
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15.0,),
                            child: Text("Order ID", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 2, bottom: 4,),
                            child: Text("123456789", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                          ),
                        ],
                      ),

                      // 2. Add the Date and Time layout
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0, right: 15.0, bottom: 6.0,),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            // left side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Appointment Date", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                                SizedBox(height: 4,),
                                Text("Saturday, March 7, 2023",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                              ],
                            ),

                            // right side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("Appointment Time", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                                SizedBox(height: 4,),
                                Text("11:00 AM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // 3. Type of Service and Total Amount
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0, right: 15.0, bottom: 6.0),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // left side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Type of Service", style: TextStyle(color: Colors.yellow, fontSize: 12,),),
                                SizedBox(height: 6,),
                                Text("Full Body Massage", style: TextStyle(color: Colors.white, fontSize: 12,),),
                                SizedBox(height: 2,),
                                Text("Back Massage", style: TextStyle(color: Colors.white, fontSize: 12,),),
                                SizedBox(height: 2,),
                                Text("Head Massage", style: TextStyle(color: Colors.white, fontSize: 12,),),
                              ],
                            ),

                            // right side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("Total Amount", style: TextStyle(color: Colors.yellow, fontSize: 12,),),
                                SizedBox(height: 6,),
                                Text("\$100.00", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // space
              const SizedBox(height: 20,),

              // 2. card
              Center(
                child: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green,),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 15.0,),
                            child: Text("Order ID", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 2, bottom: 4,),
                            child: Text("123456789", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                          ),
                        ],
                      ),

                      // 2. Add the Date and Time layout
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0, right: 15.0, bottom: 6.0,),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // left side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: const [
                                Text("Appointment Date", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                                SizedBox(height: 4,),
                                Text("Saturday, March 7, 2023", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                              ],
                            ),

                            // right side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,

                              children: const [
                                Text("Appointment Time", style: TextStyle(color: Colors.yellow, fontSize: 13,),),
                                SizedBox(height: 4,),
                                Text("11:00 AM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // 3. Type of Service and Total Amount
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, top: 6.0, right: 15.0, bottom: 6.0,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // left side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Type of Service", style: TextStyle(color: Colors.yellow, fontSize: 12,),),
                                SizedBox(height: 6,),
                                Text("Full Body Massage", style: TextStyle(color: Colors.white, fontSize: 12,),),
                                SizedBox(height: 2,),
                                Text("Back Massage", style: TextStyle(color: Colors.white, fontSize: 12,)),
                                SizedBox(height: 2,),
                                Text("Head Massage", style: TextStyle(color: Colors.white, fontSize: 12,)),
                              ],
                            ),

                            // right side
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Text("Total Amount", style: TextStyle(color: Colors.yellow, fontSize: 12,)),
                                SizedBox(height: 6,),
                                Text("\$100.00", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14,)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}