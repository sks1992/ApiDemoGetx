import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/controller/album_controller.dart';

import '../widgets/custom_card.dart';

class AlbumScreen extends StatelessWidget {
  AlbumScreen({Key? key}) : super(key: key);

  final albumController = Get.put(AlbumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Albums"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Obx(
            () => albumController.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: albumController.albumList.length,
                    itemBuilder: (context, index) {
                      var data = albumController.albumList[index];
                      return CustomCard(
                        title: data.title,
                        userId: data.userId.toString(),
                        id: data.id.toString(),
                      );
                    },
                  ),
          ),
        ),
      ),
    );
  }
}
