import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/model/albums_model.dart';

class AlbumService extends GetConnect {
  @override
  void onInit(){
    httpClient.baseUrl=BASE_URL;
    super.onInit();
  }

  Future<List<AlbumModel>> getAlbumData() async {
    var response = await get("/albums");

    if (response.hasError) {
      return [];
    } else {
      var result = List<AlbumModel>.from(
        json.decode(response.bodyString!).map(
              (x) => AlbumModel.fromJson(x),
            ),
      );
      log(response.bodyString!);
      return result;
    }
  }
  /*
    Future<NewsModel> getTopNewsHeadlines() async {
    var response = await get(
        "/top-headlines?country=in&apiKey=e004331040d8464892c01b7f4b70641f");
    if (response.hasError) {
      return NewsModel(status: "", totalResults: 0, articles: []);
    } else {
      var result = NewsModel.fromJson(json.decode(response.bodyString!));
      return result;
    }
  }
  * */
}
