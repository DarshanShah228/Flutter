import 'package:flutter/material.dart';

import 'Apply_loan.dart';

class RecenttransationNavbar extends StatefulWidget {
  RecenttransationNavbar({super.key});

  @override
  State<RecenttransationNavbar> createState() => _RecenttransationNavbarState();
}

class _RecenttransationNavbarState extends State<RecenttransationNavbar> {

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
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, left: 10, right: 80),
                        child: Text("Welcome,", style: TextStyle(color: Colors.white, fontSize: 25),),
                      ),
                      //Name
                      Padding(
                        padding: const EdgeInsets.only( left: 20),
                        child: Text("Darshan Shah", style: TextStyle(color: Colors.white, fontSize: 30),),
                      ),
                    ],
                  ),

                  // image of person
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 100,bottom: 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-user-profile-avatar-png-image_10211467.png",
                      ),
                    ),
                  ),

                ],
              ),
              //Card-1
              Center(child: SizedBox(height: 10,)),
              Column(
                children: [
                  Center(
                    child: Container(
                      height: 300,
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
                            child: Text("Total Balance",style: TextStyle(color: Colors.white,fontSize: 20),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 0),
                            child: Text("N200,00.98",style: TextStyle(color: Colors.white,fontSize: 40),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                "NGN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 10,),
                          Center(
                            child: SizedBox(
                              width: 200,
                              child: const Divider(
                                color: Colors.grey,
                                thickness: 1,
                                height: 20,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),

                          //Icon with label
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      child: Icon(Icons.my_library_books_sharp,color: Colors.white,),
                                    ),
                                    Text("Loan Apply",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                //ICon 2
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(Icons.topic,color: Colors.white,),
                                    ),
                                    Text("Top Up",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                //ICon 3
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(Icons.computer_sharp,color: Colors.white,),
                                    ),
                                    Text("Liquidation",style: TextStyle(color: Colors.white),)
                                  ],
                                ),
                                //ICon 4
                                Column(
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Colors.deepOrange,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Icon(Icons.more_horiz,color: Colors.white,),
                                    ),
                                    Text("More",style: TextStyle(color: Colors.white),)
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
                      height: 500,
                      width: 500,
                      //color: Colors.lightBlueAccent,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const Text("Recent Transaction ",style: TextStyle(color: Colors.black,fontSize: 20),),
                          //1. Transaction
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                // Left side: Blue icon
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                // Middle: Title and date
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "IPPIS Duration",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "01/09/2026",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Right side: Amount and label
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "N25,000",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "August Repayment",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //2. Transaction
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                // Left side: Blue icon
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                // Middle: Title and date
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Refund",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "11/09/2026",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Right side: Amount and label
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "N20,000.34",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "August Refund",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //3. Transaction
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                // Left side: Blue icon
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                // Middle: Title and date
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "IPPIS Duration",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "01/09/2026",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Right side: Amount and label
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "N25,000",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "August Repayment",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //4. Transaction
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                // Left side: Blue icon
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                // Middle: Title and date
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Default Penalty",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "11/09/2026",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Right side: Amount and label
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "N20,000.34",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "August Refund",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          //5. Transaction
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                // Left side: Blue icon
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.account_balance_rounded,
                                    color: Colors.blue,
                                    size: 25,
                                  ),
                                ),

                                const SizedBox(width: 12),

                                // Middle: Title and date
                                const Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Refund",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "11/09/2026",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                // Right side: Amount and label
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "N20,000.34",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "August Refund",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 11,
                                      ),
                                    ),
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
            ],
          ),
        ),
    );
  }
}
