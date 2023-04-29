import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/core/colors/colors.dart';
import 'package:netflix/application/core/constant.dart';
import 'package:netflix/application/core/style1.dart';
import 'package:netflix/application/downloads/downloads_bloc.dart';
import 'package:netflix/presentation/widgets/app_bar_wiget.dart';



class screenDownloads extends StatelessWidget {
   screenDownloads({super.key});

   final widgetList = const [_smartdownloads(), Section2(), Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
            
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              return widgetList[index];
            },
            separatorBuilder: (context, index) {
              return listviewHeight;
            },
            itemCount: widgetList.length));
  }
}

class _smartdownloads extends StatelessWidget {
  const _smartdownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      kwidth,
      Icon(Icons.settings,
     color: kwhite,),
      Text("Smart Downloads")
    ],);
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget(
      {Key? key,
      this.angle = 0,
      required this.margin,
      required this.image,
      required this.size})
      : super(key: key);
  final double angle;
  final EdgeInsets margin;

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override

  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //it work  aftrer the building of ths UI.
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadImages());
    });
    final Size size = MediaQuery.of(context).size;
   return Column(children: [
     Text("Introducing Downloads for you",textAlign: TextAlign.center,style:downIndroTextStyle1),
         kHeight, 
         Text("We will downloads a personalised selection of movies and shows for you, so ther is always something to watch on your device ",textAlign: TextAlign.center,style: downIndroTextStyle2,),
       BlocBuilder<DownloadsBloc, DownloadState>(
          builder: (context, state) {
            return state.isLoading
                ? const CircularProgressIndicator()

      :SizedBox(
        width: size.width,
        height: size.width,
        
        child: Stack(alignment: Alignment.center,
          children: [
            CircleAvatar(radius: size.width*0.4,
            backgroundColor: kgrey.withOpacity(0.5),),
             DownloadImageWidget(
                          image:
                              '$imageAppendUrl${state.downloads[0].posterPath}',
                          margin: const EdgeInsets.only(left: 180, top: 50),
                          angle: 23,
                          size: Size(size.width * 0.35, size.width * 0.55),
                        ),
                        DownloadImageWidget(
                          image:
                              "$imageAppendUrl${state.downloads[1].posterPath}",
                          margin: const EdgeInsets.only(right: 180, top: 50),
                          angle: -23,
                          size: Size(size.width * 0.35, size.width * 0.55),
                        ),
                        DownloadImageWidget(
                          image:
                              "$imageAppendUrl${state.downloads[2].posterPath}",
                          margin: const EdgeInsets.only(bottom: 10, top: 13),
                          size: Size(size.width * 0.4, size.width * 0.6),
                        )
          ],
        ),
      );
          },
       )
   ],);
  }
}
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            height: 50,
            color: kbuttoncolorsblue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child : const Padding(padding: EdgeInsets.symmetric(vertical: 10),
            child:  Text(
              'Set up',
              style: textStyle1,
            ),
                )
          ),
        ),
        kHeight,
        MaterialButton(
          color: kbuttoncolorswhite,
          onPressed: () {},
          height: 40,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Text(
            'See what you can download',
            style: textStyle2,
          ),
        )
      ],
    );
  }
}