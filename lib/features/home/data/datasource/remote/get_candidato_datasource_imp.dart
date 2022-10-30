import 'package:dartz/dartz.dart';
import 'package:resultadoeleicao/core/data/service/http_service.dart';
import 'package:resultadoeleicao/features/home/data/datasource/get_candidato_datasource.dart';
import 'package:resultadoeleicao/features/home/data/dto/candidato_dto.dart';

class GetCandidatoDataSourceImp implements GetCandidatoDataSource{
  final HttpService _httpService;
  GetCandidatoDataSourceImp(this._httpService);

  @override
  Future<Either<Exception, List<dynamic>>> call() async {
    try {
      var result = await _httpService.get('https://resultados.tse.jus.br/oficial/ele2022/545/dados-simplificados/br/br-c0001-e000545-r.json');
      return Right(result.data['cand'].map((e)=>CandidatoDto.fromJson(e)).toList());
    } catch (e) {
      return Left(Exception('Falha no datasource'));
    }
  }

}