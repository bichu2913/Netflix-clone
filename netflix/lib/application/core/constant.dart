import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kwidth =SizedBox(
  width: 10,
);
const kHeight = SizedBox(height: 15);
const listviewHeight = SizedBox(height: 20);
const searchText1 = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
const kHeight20 = SizedBox(height: 20);
const imageAppendUrl = 'https://image.tmdb.org/t/p/w500';
final muteButton = CircleAvatar(
  backgroundColor: Colors.black.withOpacity(0.5),
  radius: 30,
  child: IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.volume_off,
      size: 30,
      color: Colors.white,
    ),
  ),
);
final BorderRadius boredRadiusHome = BorderRadius.circular(10);
const laughIcon1 = Icons.emoji_emotions;
const laughIcon2 = Icons.add;
const laughIcon3 = Icons.share;
const laughIcon4 = Icons.play_arrow;
final textStyleIcons = TextStyle(color: Colors.white, fontSize: 16);
final TextStyle someHeaders = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
final BoxDecoration homeMainImage = BoxDecoration(
  borderRadius: boredRadiusHome,
  image: const DecorationImage(
    fit: BoxFit.cover,
    image: AssetImage('assets/downloadthird.jpg'),
  ),
);
const TextStyle myListText = TextStyle(
  fontSize: 18,
);
dynamic buttonPlayStyle =
    ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white));
   const TextStyle playText = TextStyle(fontSize: 20, color: Colors.black);
   const numberCardSize = SizedBox(
  width: 50,
);
const TextStyle numberCardIndex = TextStyle(
  fontSize: 100,
  decoration: TextDecoration.none,
  color: Colors.black,
);
final TextStyle commingSoonDateText = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);
final TextStyle contentText = GoogleFonts.italiana(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  letterSpacing: -1,
);
const SizedBox iconWidth = SizedBox(
  width: 25,
);
final TextStyle contentTextGap = GoogleFonts.biryani(
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
final muteButtonNewHot = CircleAvatar(
  backgroundColor: Colors.black.withOpacity(0.5),
  radius: 22,
  child: IconButton(
    onPressed: () {},
    icon: Icon(
      Icons.volume_off,
      size: 20,
      color: Colors.white,
    ),
  ),
);
final Padding textGap = Padding(padding: EdgeInsets.only(left: 5));
final TextStyle descrptionStyle = TextStyle(color: Colors.grey, fontSize: 15);
BoxDecoration newhotBottomDec = BoxDecoration(
  color: Colors.white,
  borderRadius: newhotBottomRad,
);
final BorderRadius newhotBottomRad = BorderRadius.circular(30);
final TextStyle bottomLabelStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
);
