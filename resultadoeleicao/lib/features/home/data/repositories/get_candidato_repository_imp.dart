import 'package:dartz/dartz.dart';
import 'package:resultadoeleicao/features/home/data/datasource/get_candidato_datasource.dart';
import 'package:resultadoeleicao/features/home/domain/entities/cadidato.dart';
import 'package:resultadoeleicao/features/home/domain/repositories/get_candidato_repository.dart';



class GetCadidatoRepositoryImp implements GetCandidatoRepository {
  final GetCandidatoDataSource _getCandidatoDataSource;
  GetCadidatoRepositoryImp(this._getCandidatoDataSource);

  @override
  Future<Either<Exception, List<dynamic>>> call() async {
    return await _getCandidatoDataSource();
  }
}

