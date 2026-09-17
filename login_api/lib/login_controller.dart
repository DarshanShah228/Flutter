import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api_services/api_services.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  ApiServices api = ApiServices();

  Future<void> LoginCont()async{

    final respo = await api.Login(email.text, password.text);

    if(respo.responseCode.toString() == "1"){
      Get.snackbar("Success", respo.message.toString(),
        backgroundColor: Colors.green
      );

      final SharedPreferences prefs= await SharedPreferences.getInstance();
      prefs.setString("id",respo.userData?.id.toString()??"");

      final userId = prefs.getString("id");
      //Get.to(BottomNavExample());
    }else{
      Get.snackbar("Error", respo.message.toString(),
        backgroundColor: Colors.red
      );
    }
  }

}