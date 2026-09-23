import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_api/Tree_plant/tree_model.dart';

import '../api_services/api_services.dart';

class TreeController extends GetxController
{
  API_Services api = API_Services();
  //when data was not fetched completed or is in working then loader was accure...
  RxBool isLoading = false.obs;
  RxList treeDataList = <TreePlant>[].obs;

  Future<void> Treecont() async
  {
    isLoading.value = true;

    final respo = await api.Tree();

    if(respo.responseCode.toString() == "1")
    {
      treeDataList.value = respo.treePlant ?? [];
      isLoading.value = false;
    }
    else
    {
      isLoading.value=false;
      Get.snackbar("Error", respo.message.toString(),
                  backgroundColor: Colors.red
              );
    }
  }
}
