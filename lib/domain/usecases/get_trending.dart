import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/entities/app_error.dart';
import 'package:movie_app/domain/entities/movie_entity.dart';
import 'package:movie_app/domain/entities/no_param.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';
import 'package:movie_app/domain/usecases/usecases.dart';

class GetTrending extends UseCases<List<MovieEntity>, NoParam> {
  final MovieRepository repository;

  GetTrending(this.repository);
  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParam noParam) async {
    return repository.getTrending();
  }
}
