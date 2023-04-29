import 'package:netflix/application/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoints {
  static const downloads = "$kbaseUrl/ trending/all/day?api_key=$apiKey";
  static const search = '$kbaseUrl/search/movie?api_key=$apiKey';
  static const hotAndNewMovie = '$kbaseUrl/discover/movie?api_key=$apiKey';
  static const hotAndNewTv = '$kbaseUrl/discover/tv?api_key=$apiKey';
}