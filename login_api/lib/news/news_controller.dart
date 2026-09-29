import 'package:get/get.dart';
import 'package:login_api/api_services/api_services.dart';
import 'package:login_api/news/news_model.dart';
import 'news_model.dart';

class NewsController extends GetxController{
  API_Services  api =API_Services();
  RxBool isLoading =false.obs;
  RxList<Articles> NewData=<Articles>[].obs;

  Future<void> NewsCont() async{
    try{
      isLoading.value=true;
      final respo=await api.news();
      if(respo.information!.realTimeArticles!.message.toString().isNotEmpty){
        NewData.value=respo.articles ?? [];

      }
      else{
        throw "Error!!!";
      }
      isLoading.value=false;
    }catch(e){}
  }
}