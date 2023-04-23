import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:route/controller/catagory_controller.dart';
import 'package:route/models/FallModels.dart';

class FallDetailPage extends StatelessWidget {
  final FallModels? FallModel;

  FallDetailPage({Key? key, this.FallModel}) : super(key: key);
  static const double cornerRadius = 20;
  final CathController cathController = Get.put(CathController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: null,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/api");
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/fav");
            },
            icon: Icon(Icons.favorite),
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    FallModel?.imgUrl ?? "",
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  Positioned(
                    top: (MediaQuery.of(context).size.height * 0.5) - 20,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(cornerRadius),
                              topRight: Radius.circular(cornerRadius))),
                    ),
                  ),
                ],
              ),
              Container(
                constraints: BoxConstraints(
                    maxHeight: double.infinity,
                    minHeight: MediaQuery.of(context).size.height * 0.4),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            FallModel?.firstname ?? "",
                            style: TextStyle(fontSize: 19, color: Colors.black),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            FallModel?.age ?? "",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            FallModel?.sex ?? "",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          )),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            FallModel?.address ?? "",
                            style:
                                TextStyle(fontSize: 12, color: Colors.blueGrey),
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}