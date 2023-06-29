import '../entities/movies_entity.dart';

abstract class BaseMoviesRepository {
  Future<List<MovieEntity>> getNowplaying();
  Future<List<MovieEntity>> getPopularMovies();
  Future<List<MovieEntity>> getTopRatedMovies();

}
