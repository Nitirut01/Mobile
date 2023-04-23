import 'dart:convert';

import 'package:route/database.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:route/models/FallModels.dart';

class CathController extends GetxController {
  RxList<FallModels> FallModel = <FallModels>[].obs;
  RxInt amount = 1.obs;

  void addItem() {
    amount.value++;
  }

  void removeItem() {
    if (amount > 1) {
      amount.value--;
    }
  }

  void fetchdata() async {
    final reponse = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/Nitirut01/Mobile/main/fall.json'));
    if (reponse.statusCode == 200) {
      final data = jsonDecode(reponse.body).cast<Map<String, dynamic>>();
      FallModel.value =
          data.map<FallModels>((json) => FallModels.fromJson(json)).toList();
    } else {
      throw Exception("Failed");
    }
  }

  void addFav(FallModels? FallModel, String Firstname) async {
    try {
      FallModel?.firstname = Firstname;
      await FallDatabase.addFav((FallModel ?? FallModels()) as FallModels);
    } catch (e) {
      print(e.toString());
    }
  }

  void getFav() async {
    try {
      var foodMapList = await FallDatabase.getFav();
      FallModel.value = foodMapList.map((e) => FallModels.fromJson(e)).toList();
    } catch (e) {
      print(e.toString());
    }
  }
}