import 'package:dartz/dartz.dart';
import 'package:resultadoeleicao/features/home/domain/entities/cadidato.dart';

abstract class GetCandidatoUsercase{
  Future<Either<Exception, List<dynamic>>> call();
}
