import 'package:flutter/material.dart';
import 'Apply_loan.dart';

class loan_breakdown extends StatelessWidget {
  const loan_breakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ApplyLoan(),
              ),
            );
          },
        ),

        title: Text(
          "Loan Breakdown",
          style: TextStyle(
            color: Colors.orange,
          ),
        ),
      ),

      body: Column(
        children: [

          // card
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [

                // LEFT SIDE
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Amount",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "N200,000.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Monthly Repayment",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "N25,000.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Loan End Date",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "02/34/2022",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                // DIVIDER
                Container(
                  height: 160,
                  width: 1,
                  color: Colors.grey.shade300,
                ),

                SizedBox(width: 25),

                // RIGHT SIDE
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Duration",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "7 months",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Loan Start Date",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "01/23/2021",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Interest per day",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "0.25%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // content
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'By clicking "Continue", I consent to Credit Wallet obtaining '
                  'information from relevant third parties as may be necessary, '
                  'on my employment details, salary payment, loans and other '
                  'related data, to make a decision on my loan application. '
                  'I also consent to the loan amounts being deducted from my '
                  'salary at source before credit to my account and any '
                  'outstanding loan balance recovered automatically from any '
                  'other accounts linked to me in the case of default.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
                height: 1.5,
              ),
            ),
          ),

          SizedBox(height: 35),

          // btn
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Continue button
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF193F60),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),

                child: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}