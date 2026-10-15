import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
                Column(
                  children: [
                    //1.Row
                    Row(
                      children: [
                        //Welcome
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 80),
                          child: Text("My Account,", style: TextStyle(color: Colors.white, fontSize: 25),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0,left: 90),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              "https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-user-profile-avatar-png-image_10211467.png",
                            ),
                          ),
                        ),
                      ],
                    ),
                    //2 Row
                    Row(
                      children: [
                        //Welcome
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 80),
                          child: Text("Show Dashboard Account Balances", style: TextStyle(color: Colors.white, fontSize: 14),),
                        ),
                        Switch(
                            value: true,
                            onChanged: (context){
                              setState(() {

                              });
                            },
                        ),
                      ],
                    ),
                    //3.Row
                    Row(
                      children: [
                        //Welcome
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 80),
                          child: Text("Enable Notification", style: TextStyle(color: Colors.white, fontSize: 14),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Switch(
                            value: true,
                            onChanged: (context){
                              setState(() {

                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    //Card-2
                    Center(child: SizedBox(height: 20,)),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            height: 600,
                            width: 500,
                            // width: double.infinity,
                            //color: Colors.lightBlueAccent,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                //1. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.home, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Loan Apply"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //2. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.present_to_all_outlined, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Apply for Topup"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //3. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.home, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Liquidation"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //4. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.home, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Letter of indebtedness"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //5. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.indeterminate_check_box, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Letter of non-indebtedness"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //6. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.payment, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Make Repayment Manually"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //7. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.perm_contact_cal, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Contact Support"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //8. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.restart_alt, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Reset Password"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //9. CARD
                                Card(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(width: 60,height: 50,),
                                          Icon(Icons.exit_to_app, color: Colors.deepOrangeAccent,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18.0),
                                            child: Text("Logout"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
