import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart' as dio;

import '../Tree_plant/tree_model.dart';
import '../login_model.dart';
import '../news/news_model.dart';

class API_Services{

  final dio.Dio dio1 = dio.Dio();

  //Login
  Future<login> Login(String email, String password) async{
    try{
      final respo = await http.post(
          Uri.parse("https://www.anniecabs.com/LJ/index.php/api/login"),
        body: {
            "Email":email,
            "Password":password
        }
      );
      if(respo.statusCode == 200 || respo.statusCode == 201)
      {
        final jsonData = jsonDecode(respo.body);
        final userValue = login.fromJson(jsonData);

        return userValue;
      }
      else{
        throw Exception("Error!!!");
      }
    }
    catch(e){
      print(e);
      throw Exception("Error!!!");
    }



  }
  //For Tree Plant
  Future<tree> Tree() async{
    try{
      final respo = await dio1.get("https://www.anniecabs.com/LJ/index.php/api/get_tree_plant");

      if(respo.statusCode == 200)
      {
        final userValue=tree.fromJson(respo.data);
        return userValue;
      }
      else{
        throw Exception("Error!!!");
      }
    }
    catch(e){
      print(e);
      throw Exception("Error!!!");
    }
  }
  //News
  Future<News> news() async{
    try{
      final respo = await dio1.get("https://gnews.io/api/v4/search?q=example&lang=en&country=us&max=10&apikey=b9c7382436b811f3b66d2091f54e9f5a");

      if(respo.statusCode == 200)
      {
        final userValue=News.fromJson(respo.data);
        return userValue;
      }
      else{
        throw Exception("Error!!!");
      }
    }
    catch(e){
      print(e);
      throw Exception("Error!!!");
    }
  }
}