// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import '../../core/error/failure.dart';
import '../entities/movies_entity.dart';
import '../repositories/base_movie_repository.dart';

class GetTopRatedMoviesUsecase {
  final BaseMoviesRepository baseMoviesRepository;
  GetTopRatedMoviesUsecase({
    required this.baseMoviesRepository,
  });


 Future<Either<Failure, List<MovieEntity>>> exeute() async {
   return await baseMoviesRepository.getTopRatedMovies();
  }
}
