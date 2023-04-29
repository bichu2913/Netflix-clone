
import 'package:flutter/material.dart';
import 'package:netflix/application/core/colors/colors.dart';
import 'package:netflix/application/core/constant.dart';
import 'package:netflix/presentation/new_and_hot/widget/main_button.dart';
import 'package:netflix/presentation/new_and_hot/widget/video_widget.dart';


class CommingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String descrption;

  const CommingSoonWidget({
    super.key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.descrption,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 70,
          child: Column(
            children: [
              Text(
                month,
                style: commingSoonDateText,
              ),
              Text(
                day,
                style: commingSoonDateText,
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(url: posterPath),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        movieName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: contentText,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          //textIconWidth,
                          NewHotButtons(
                            color: newhotColor,
                            icon: Icons.alarm,
                            size: 20,
                            text: "Remaind Me",
                            textSize: 11,
                          ),
                          iconWidth,
                          NewHotButtons(
                            color: newhotColor,
                            icon: Icons.info,
                            size: 20,
                            text: "Info",
                            textSize: 11,
                          ),
                          kwidth
                        ],
                      ),
                    ),
                    kHeight
                  ],
                ),
                kHeight,
                Text('Comming on $day $month'),
                kHeight,
                Text(
                  movieName,
                  style: contentTextGap,
                ),
                Expanded(
                  child: Text(
                    descrption,
                    //overflow: TextOverflow.ellipsis,
                    style: descrptionStyle,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
