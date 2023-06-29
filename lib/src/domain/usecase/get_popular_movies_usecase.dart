// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../entities/movies_entity.dart';
import '../repositories/base_movie_repository.dart';

class GetPopularMoviesUsecase {
  final BaseMoviesRepository baseMoviesRepository;
  GetPopularMoviesUsecase({
    required this.baseMoviesRepository,
  });


 Future<List<MovieEntity>> exeute() async {
   return await baseMoviesRepository.getPopularMovies();
  }
}
