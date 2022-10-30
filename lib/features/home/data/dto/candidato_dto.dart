import 'package:resultadoeleicao/features/home/domain/entities/cadidato.dart';

extension CandidatoDto on Candidato {
    static Candidato fromJson(Map json) {
      return Candidato(
        name: json["nm"],
        votes: json["vap"],
        percentage: json["pvap"]
      );
  }

}