import 'package:flutter/material.dart';

import 'custom_row.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key, required this.title, required this.id, required this.userId})
      : super(key: key);

  final String title;
  final String id;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomListTile(
            title: "UserId",
            titleValue: userId,
          ),
          CustomListTile(
            title: "Id",
            titleValue: id,
          ),
          CustomListTile(
            title: "Title",
            titleValue: title,
          ),
        ],
      ),
    );
  }
}
