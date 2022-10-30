import 'package:dartz/dartz.dart';
import 'package:resultadoeleicao/features/home/domain/entities/cadidato.dart';


abstract class GetCandidatoRepository {
  Future<Either<Exception, List<dynamic>>> call();
}