import 'package:flutter/material.dart';
import 'package:smartphone/ApiFileRoute/dio_helper.dart';
import 'package:smartphone/Moodle/ProdactMoodle.dart';

class dioProviderProdct extends ChangeNotifier {
  dioProviderProdct() {
    getAllProdact();
    getAllCatogery();
  }
  List<Prodact> prodact = [];
  List<String> catogey = [];
  Prodact? selectProdact;
  Future<List<Prodact>> getAllProdact() async {
    prodact = await DioHelper.dioHelper.getAllProdact();
    notifyListeners();
    return prodact;
  }

  Future<List<String>> getAllCatogery() async {
    catogey = await DioHelper.dioHelper.getAllCatgory();
    notifyListeners();
    print(catogey);
    return catogey;
  }

  getOneProdact(int id) async {
    selectProdact = await DioHelper.dioHelper.getOneProdact(id);
    notifyListeners();
  }

  int pagRout(int x) {
    notifyListeners();
    return x;
  }
}
