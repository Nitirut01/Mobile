import 'package:flutter/material.dart';
import 'package:route/controller/catagory_controller.dart';
import 'package:route/screen/ApidetailPage.dart';
import 'package:get/get.dart';
import 'package:route/models/FallModels.dart';

class ItemFall extends StatelessWidget {
  final FallModels FallModel;

  const ItemFall({required this.FallModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CathController cathController = Get.put(CathController());
    cathController.fetchdata();
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: 0,
          child: Card(
            elevation: 1,
            color: Colors.white,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              height: 150,
              width: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    FallModel.firstname ?? "",
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(FallModel.surname ?? "",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                      )),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FallDetailPage(
                                    FallModel: FallModel,
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 168, 209, 31)),
                    child: const Text("Detail"),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 10,
            right: 0,
            child: Image.network(
              FallModel.imgUrl ?? '',
              height: 200,
              width: 200,
            )),
      ],
    );
  }
}