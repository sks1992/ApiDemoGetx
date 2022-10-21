import 'package:get/get.dart';
import 'package:untitled/ui/screen/album_screen.dart';

class RouteNames {
  static String albums = "/albums";
}

class AppRoute {
  static final route = [
    GetPage(
      name: RouteNames.albums,
      page: () => AlbumScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
