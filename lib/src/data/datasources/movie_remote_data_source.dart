import 'package:clean_architecture_project/src/core/error/exception.dart';
import 'package:dio/dio.dart';

import '../../core/network/api_constance.dart';
import '../../core/network/error_message_model.dart';
import '../models/movies_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MoviesModel>> getNowPlayingMovies();

  Future<List<MoviesModel>> getPopularMovies();

  Future<List<MoviesModel>> getTopRatedMovies();

  // Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);

  // Future<List<RecommendationModel>> getRecommendation(
  //     RecommendationParameters parameters);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.nowPlayingMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List).map(
        (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstance.popularMoviesPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List).map(
        (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstance.topRatedMoviesPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data["results"] as List).map(
        (e) => MoviesModel.fromJson(e),
      ));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  // @override
  // Future<MovieDetailsModel> getMovieDetails(
  //     MovieDetailsParameters parameters) async {
  //   final response =
  //       await Dio().get(ApiConstance.movieDetailsPath(parameters.movieId));

  //   if (response.statusCode == 200) {
  //     return MovieDetailsModel.fromJson(response.data);
  //   } else {
  //     throw ServerException(
  //       errorMessageModel: ErrorMessageModel.fromJson(response.data),
  //     );
  //   }
  // }

  // @override
  // Future<List<RecommendationModel>> getRecommendation(
  //     RecommendationParameters parameters) async {
  //   final response =
  //       await Dio().get(ApiConstance.recommendationPath(parameters.id));

  //   if (response.statusCode == 200) {
  //     return List<RecommendationModel>.from(
  //         (response.data["results"] as List).map(
  //       (e) => RecommendationModel.fromJson(e),
  //     ));
  //   } else {
  //     throw ServerException(
  //       errorMessageModel: ErrorMessageModel.fromJson(response.data),
  //     );
  //   }
  // }
}
