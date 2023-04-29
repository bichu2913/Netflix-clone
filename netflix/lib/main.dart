import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/application/hot_and_new/hot_and_new_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentation/main_page/widgets/screen_main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) {
            return getIt<DownloadsBloc>();
          },
        ),
         BlocProvider(
          create: (ctx) {
            return getIt<SearchBloc>();
          },
        ),
        BlocProvider(
          create: (ctx) {
            return getIt<FastLaughBloc>();
          },
        ),
        BlocProvider(
          create: (ctx) {
            return getIt<HotAndNewBloc>();
          },
        ),
        BlocProvider(
          create: (ctx) {
            return getIt<HomeBloc>();
          },
        ),
        
      ],
      child: MaterialApp(
      title: 'Netflix app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        
        backgroundColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme:  const TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white)
        )
      ),
      home:  ScreenMainPage(),
      )
    );
  }
}


