import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({Key? key, required this.titleValue, required this.title})
      : super(key: key);

  final String titleValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
      leading:  Text(title),
      title: Text(titleValue,),
    );
  }
}
