import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  login_page({super.key});
  TextEditingController username= TextEditingController();
  TextEditingController password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 68.0),
          child: Column(
            children: [
              Center(child: Text("Login to Your Account",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
              Center(child: Text("Provide Your username and Password",style: TextStyle(fontSize: 15,color: Colors.grey,)),),
              Center(child: Text("to access your account",style: TextStyle(fontSize: 15,color: Colors.grey,))),
              Padding(
                padding: const EdgeInsets.only(top: 68.0),
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    width: 290,
                    color: Colors.white,
                    //username
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: SizedBox(
                        width: 280,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Username"),
                            TextField(
                              controller: username,
                              decoration: InputDecoration(
                                fillColor: Colors.blue,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),

                            //password
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: SizedBox(
                                width: 280,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Password"),
                                    TextField(
                                      controller: password,
                                      decoration: InputDecoration(
                                        fillColor: Colors.blue,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            //login btn
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: SizedBox(
                                width: 280,
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onPressed: (){
                                      if(username.text.isEmpty){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              showCloseIcon: true,
                                              duration: Duration(seconds: 4),
                                              backgroundColor: Colors.red,
                                              content: Text("Incompleted Username!"),
                                            )
                                        );
                                      }
                                      if(password.text.isEmpty){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              showCloseIcon: true,
                                              duration: Duration(seconds: 4),
                                              backgroundColor: Colors.red,
                                              content: Text("Incompleted Password!"),
                                            )
                                        );
                                      }
                                      else{
                                        ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              showCloseIcon: true,
                                              duration: Duration(seconds: 4),
                                              backgroundColor: Colors.green,
                                              content: Text("Login Successfully!"),
                                            )
                                        );
                                      }
                                    },
                                    child:const Text("Login")),
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ),
        
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(child: Text("Don't have an account? Register",style: TextStyle(fontSize: 15,color: Colors.grey,),)),
              Center(child: Text("Forget Password?",style: TextStyle(fontSize: 15,color: Colors.grey,)),),
            ],
          ),
        ),
      ),
    );
  }
}
