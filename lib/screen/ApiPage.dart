import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:route/controller/catagory_controller.dart';
import 'package:route/widget/Apitem.dart';

class FallPage extends StatelessWidget {
  FallPage({super.key});

  final CathController cathController = Get.put(CathController());

  @override
  Widget build(BuildContext context) {
    cathController.fetchdata();
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Obx(() => GridView.builder(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 18,
                            mainAxisExtent: 280,
                            crossAxisSpacing: 18),
                    itemCount: cathController.FallModel.length,
                    itemBuilder: (context, index) {
                      return ItemFall(
                        FallModel: cathController.FallModel[index],
                      );
                    }))),
          ],
        ),
      ),
    );
  }
}