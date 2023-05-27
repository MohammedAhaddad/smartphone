import 'package:dio/dio.dart';
import 'package:smartphone/Moodle/ProdactMoodle.dart';

class DioHelper {
  DioHelper._();
  static DioHelper dioHelper = DioHelper._();
  Dio dio = Dio();

  Future<List<Prodact>> getAllProdact() async {
    Response response = await dio.get("https://fakestoreapi.com/products");
    List res = response.data;
    List<Prodact> prodact = res.map((e) {
      return Prodact.fromJson(e);
    }).toList();
    return prodact;
  }

  Future<Prodact> getOneProdact(int id) async {
    Response response = await dio.get("https://fakestoreapi.com/products/$id");
    print(response.data);
    return Prodact.fromJson(response.data);
  }

  Future<List<String>> getAllCatgory() async {
    Response response =
        await dio.get("https://fakestoreapi.com/products/categories");
    List listCatogory = response.data;
    List<String> catogry = listCatogory.map((e) => e.toString()).toList();
    return catogry;
  }

  getOneCatgory(String Categorie) async {
    Response response =
        await dio.get("https://fakestoreapi.com/products/category/$Categorie");
    List respons = response.data;
    List<Prodact> prodact = respons.map((e) {
      return Prodact.fromJson(e);
    }).toList();

    return prodact;
  }
}
