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
      if(respo.totalArticles == 7197){
        NewData.value=respo.articles ?? [];
        isLoading.value=false;
      }
      else{
        
      }
    }catch(e){}
  }
}