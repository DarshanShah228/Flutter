import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'news_controller.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController controller = Get.put(NewsController());
    controller.NewsCont();
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: Obx(() {

        if(controller.isLoading.value)
        {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        return ListView.builder(
          itemCount: controller.NewData.length,

          itemBuilder: (context, index) {

            return Card(
              margin: EdgeInsets.all(10),

              child: Padding(
                padding: EdgeInsets.all(10),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(
                      controller.NewData[index].title ?? "",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      controller.NewData[index].description ?? "",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      controller.NewData[index].source?.name ?? "",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),

                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
