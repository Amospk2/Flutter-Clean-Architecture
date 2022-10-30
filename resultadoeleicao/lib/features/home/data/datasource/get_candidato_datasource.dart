import 'package:dartz/dartz.dart';

abstract class GetCandidatoDataSource {
  Future<Either<Exception, List<dynamic>>> call();
}