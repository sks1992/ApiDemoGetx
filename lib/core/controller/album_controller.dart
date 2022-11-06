import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/model/albums_model.dart';
import 'package:untitled/core/service/album_service.dart';

class AlbumController extends GetxController {
  final appApiService = Get.put(AlbumService());

  var isLoading = false.obs;
  var albumList = RxList<AlbumModel>([]);

  @override
  void onInit() {

    FirebaseMessaging.onMessage.listen((message) {
      Get.defaultDialog(
        title: 'payment_method',
        content: SizedBox(
          width: 300,
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text(message.data["myname"].toString())),
                ],
              ),
            ],
          ),
        ),
      );
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      Get.defaultDialog(
        title: 'payment_method',
        content: SizedBox(
          width: 300,
          child: Column(
            children: [
              Wrap(
                spacing: 8,
                children: [
                  Chip(label: Text(message.data["myname"].toString())),
                ],
              ),
            ],
          ),
        ),
      );
    });

    getAlbumData();
    super.onInit();
  }

  Future<void> getAlbumData() async {
    isLoading.value = true;
    var result = await appApiService.getAlbumData();

    if (result.isEmpty) {
      isLoading.value = false;
    } else {
      isLoading.value = false;
      albumList.value = result;
    }
  }
}
