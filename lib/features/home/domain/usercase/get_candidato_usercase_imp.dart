import 'package:dartz/dartz.dart';
import 'package:resultadoeleicao/features/home/domain/repositories/get_candidato_repository.dart';
import 'package:resultadoeleicao/features/home/domain/usercase/get_candidato_usercase.dart';


class GetCandidatoUseCaseImp implements GetCandidatoUsercase {
  final GetCandidatoRepository _getCandidatoRepository;
  GetCandidatoUseCaseImp(this._getCandidatoRepository);

  @override
  Future<Either<Exception, List<dynamic>>> call() async {
    return await _getCandidatoRepository();
  }
}
