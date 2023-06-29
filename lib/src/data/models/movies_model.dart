import 'package:clean_architecture_project/src/domain/entities/movies_entity.dart';

class MoviesModel extends MovieEntity {
  const MoviesModel(
      {required super.id,
      required super.title,
      required super.backImage,
      required super.genreIds,
      required super.overview,
      required super.voteAverage,
      required super.releaseDate});

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        id: json["id"],
        title: json["title"],
        backImage: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((e) => e)),
        overview: json["overview"],
        voteAverage: json["vote_average"].toDouble(),
        releaseDate: json["release_date"],
      );
}
