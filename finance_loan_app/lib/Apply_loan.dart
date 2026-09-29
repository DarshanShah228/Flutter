import 'package:flutter/material.dart';

class ApplyLoan extends StatefulWidget {
  ApplyLoan({super.key});

  @override
  State<ApplyLoan> createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  TextEditingController borrow = TextEditingController();
  String selectValue="2";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Header
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded,color: Colors.orange,),
        title: Text("Apply for a Loan",style: TextStyle(color: Colors.orange),),
      ),
      body: Center(
        child: Column(
          children: [
            //line

            //1.label-TextField
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Text("How much do you want to borrow?",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextField(
                    controller: borrow,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                  Text("You have a minimum of 30000",style: TextStyle(color: Colors.orange),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            //2.label-TextField
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Text("How long do you want the loan for?"),
                  //Drop-Down
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all()
                    ),
                    child: DropdownButtonFormField(items: [
                      DropdownMenuItem(child: Text(""),value: "",),
                      DropdownMenuItem(child: Text("12"),value: "12",),
                      DropdownMenuItem(child: Text("24"),value: "24",),
                      DropdownMenuItem(child: Text("36"),value: "36",),
                    ], onChanged: (value) {
                      setState(() {
                        selectValue=value!;
                      });
                    }
                    ),
                  ),
                  Text("You have minimum of a 24 hrs",style: TextStyle(color: Colors.orange),)
                ],
              ),
            ),
            SizedBox(height: 30),
            //3.btn
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  print("Loan Applied");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[900],
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  "Apply",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
