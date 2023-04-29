import 'package:flutter/material.dart';
import 'package:netflix/application/core/constant.dart';


class MainTitile extends StatelessWidget {
  const MainTitile({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: searchText1,
    );
  }
}