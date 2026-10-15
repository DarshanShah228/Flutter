import 'package:flutter/material.dart';

class LoanDashboard extends StatelessWidget {
  const LoanDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                Column(
                  children: [
                    //Welcome
                    Text("Loans", style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            //Card-1
            Center(child: SizedBox(height: 10,)),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 200,
                    width: 500,
                    //color: Colors.lightBlueAccent,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 28.0,left: 0),
                          child: Text("Current Balance",style: TextStyle(color: Colors.white,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0,left: 0),
                          child: Text("N200,00.98",style: TextStyle(color: Colors.white,fontSize: 40),),
                        ),

                        SizedBox(height: 5,),

                        //Icon with label
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(
                                      Icons.open_in_browser,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Open Loan",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),

                              // Icon 2
                              Column(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.deepOrange,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Icon(
                                      Icons.close_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Closed Loan",
                                    style: TextStyle(color: Colors.white),
                                  )
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

            //Card-2
            Center(child: SizedBox(height: 10,)),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 350,
                    width: 500,
                    //color: Colors.lightBlueAccent,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        //1.Card
                        Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: Colors.grey.shade300),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("CW1032984-05", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black87,),),
                                  SizedBox(height: 5),
                                  Text("₦200,000", style: TextStyle(fontSize: 14, color: Colors.grey,),),
                                ],
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.deepOrangeAccent,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                        SizedBox(height: 10,),
                        //2.card
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("CW1023984-05", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87,),),
                                      SizedBox(height: 5),
                                      Text("₦100,000", style: TextStyle(fontSize: 14, color: Colors.grey,),),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.deepOrangeAccent,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        //3.card
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.grey.shade300),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("CW1023984-05", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87,),),
                                      SizedBox(height: 5),
                                      Text("₦50,000", style: TextStyle(fontSize: 14, color: Colors.grey,),),
                                    ],
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.deepOrangeAccent,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
