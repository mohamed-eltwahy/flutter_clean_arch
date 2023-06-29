// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  final int id;
  final String title;
  final String backImage;
  final List<int> genreIds;
  final String overview;
  final double voteAverage;
  final String releaseDate;
  const MovieEntity({
    required this.id,
    required this.title,
    required this.backImage,
    required this.genreIds,
    required this.overview,
    required this.voteAverage,
    required this.releaseDate,
  });


  @override
  List<Object> get props {
    return [
      id,
      title,
      backImage,
      genreIds,
      overview,
      voteAverage,
      releaseDate,
    ];
  }
}
