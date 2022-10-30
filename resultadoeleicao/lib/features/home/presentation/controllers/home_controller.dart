import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:resultadoeleicao/features/home/domain/usercase/get_candidato_usercase.dart';

class HomeController {


  final GetCandidatoUsercase _getCandidatoUseCase;
  HomeController(this._getCandidatoUseCase) {
    fetch();
    Timer.periodic(const Duration(seconds: 60), (timer)=> fetch());
  }
  ValueNotifier<List<dynamic>>? candidatos = ValueNotifier<List<dynamic>> ([]);


  void fetch () async
  {
   debugPrint("Fetch Happened");
      var response = await _getCandidatoUseCase();

      response.fold(
      (error) => debugPrint(error.toString()),
      (success) {
        candidatos!.value = success;
      },
    );
  
  }
}