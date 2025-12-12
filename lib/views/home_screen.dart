import 'package:flutter/material.dart';
import 'package:getxclass/controllers/home_controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int count = 0;
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Get has two different state managers:
      ///the simple state manager (we'll call it GetBuilder) and the reactive state manager (GetX/Obx)
      ///
      body: GetX<HomeController>(
        builder: (getContext) {
          return Center(
            child: Text(
              "${homeControl.count.value}",
              style: TextStyle(fontSize: 30),
            ),
          );
        },
      ),
      // ================================== Reactive State Management
      // Obx(
      //   () => Center(
      //     child: Text(
      //       "${homeControl.count.value}",
      //       style: TextStyle(fontSize: 30),
      //     ),
      //   ),
      // ),
      //================================ Simple State Management
      //GetBuilder<HomeController>(
      //   // init: HomeController(),
      //   builder: (getContext) {
      //     return Center(
      //       child: Text("${homeControl.count}", style: TextStyle(fontSize: 30)),
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.incrementCount();

          print("Add $count");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
