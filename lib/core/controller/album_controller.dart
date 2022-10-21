import 'package:get/get.dart';
import 'package:untitled/core/model/albums_model.dart';
import 'package:untitled/core/service/album_service.dart';

class AlbumController extends GetxController {
  final appApiService = Get.put(AlbumService());

  var isLoading = false.obs;
  var albumList = RxList<AlbumModel>([]);

  @override
  void onInit() {
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
