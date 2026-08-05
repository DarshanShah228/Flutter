import 'package:flutter/material.dart';

class login_design extends StatelessWidget {
  login_design({super.key});

  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Center(
                child: Text("Login",style: TextStyle(color: Colors.blueAccent),),
            ),
          ),
          //Username
          SizedBox(
            width: 250,
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person,color: Colors.blueAccent,),
                  label: Text("Username",style: TextStyle(color: Colors.white),),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent),
                    borderRadius:BorderRadius.circular(20),
                  )
                ),
              ),
          ),
          //Password
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [

                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: password,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.security, color: Colors.blueAccent),
                      label: Text(
                        "Password",
                        style: TextStyle(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                //login btn
                SizedBox(height: 20),

                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ),
                //text
                SizedBox(height: 20),

                Text(
                  "Don't Have An Account? Sign Up",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
