import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../application/core/constant.dart';

class SearchTextTiltle extends StatelessWidget {
  const SearchTextTiltle({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: searchText1,
    );
  }
}