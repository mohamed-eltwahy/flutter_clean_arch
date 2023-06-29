import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/movies_entity.dart';

abstract class BaseMoviesRepository {
 Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();

}
