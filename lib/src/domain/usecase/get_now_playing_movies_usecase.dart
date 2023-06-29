// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_project/src/domain/repositories/base_movie_repository.dart';

import '../entities/movies_entity.dart';

class GetNowPlayingMovisUseCase {
  final BaseMoviesRepository baseMoviesRepository;
  GetNowPlayingMovisUseCase({
    required this.baseMoviesRepository,
  });

 Future<List<MovieEntity>> exeute() async {
   return await baseMoviesRepository.getNowplaying();
  }
}
