import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smartphone/ApiFileRoute/dio_helper.dart';
import 'package:smartphone/Moodle/ProdactMoodle.dart';

class dioProviderProdct extends ChangeNotifier {
  dioProviderProdct() {
    getAllProdact();
    getAllCatogery();
  }
  int index = 0;
  PageController pageController = PageController();
  List<Prodact> prodact = [];
  List<String> catogey = [];
  Prodact? selectProdact;
  String selectCatogary = "";
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
    selectProdact = null;
    notifyListeners();
    selectProdact = await DioHelper.dioHelper.getOneProdact(id);
    notifyListeners();
    return selectProdact;
  }

  int pagRout(int x) {
    index = x;
    notifyListeners();
    return index;
  }

  getCategorieProducts() async {
    prodact = await DioHelper.dioHelper.getOneCatgory(selectCatogary);
    notifyListeners();
    return prodact;
  }
}
