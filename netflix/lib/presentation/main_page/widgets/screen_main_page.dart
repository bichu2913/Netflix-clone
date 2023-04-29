import 'package:flutter/material.dart';
import 'package:netflix/presentation/Home/Screen_home1.dart';
import 'package:netflix/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentation/main_page/widgets/bottom%20_nav.dart';
import 'package:netflix/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentation/search/search.dart';

class ScreenMainPage extends StatelessWidget{
  ScreenMainPage({Key ? key}) :super(key: key);

  final _pages =[
  const ScreenHome1(),
  const screenNewandHot(),
  const screen_fast_laugh(),
   Search(),
  screenDownloads()

  ];
 
  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body : SafeArea(
        child: ValueListenableBuilder(valueListenable: indexchangeNotifier, builder:((context,int index,_) {
          return _pages[index];
        })),
      ),
      bottomNavigationBar: const Bottomnavbar(),
    );
  }
}