import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_api/Tree_plant/tree_controller.dart';

class TreeScreen extends StatefulWidget {
  TreeScreen({super.key});

  @override
  State<TreeScreen> createState() => _TreeScreenState();
}

class _TreeScreenState extends State<TreeScreen> {
  //Obj of class of Tree_Controller.dart
  final TreeController controller= Get.put(TreeController());

  @override
  void initState(){
    super.initState();
    controller.Treecont();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Obx(()=>controller.isLoading.value
          ? Center(
        child: CircularProgressIndicator(),)
          :controller.treeDataList.isEmpty
          ?Center(
          child: Text("Data Not Found!!"))
          :ListView.builder(
          itemCount: controller.treeDataList.length,
          itemBuilder: (context, index){
            final data = controller.treeDataList[index];
            return ListTile(
              leading: Image.network("https://www.anniecabs.com/LJ/uploads/the-sill_ceramic-message-pops_variant_i-dig-you.png"),
              title: Text(data.name.toString()),
              subtitle: Text(data.description.toString()) ,
            );
          }
          )
      )


    );
  }
}
