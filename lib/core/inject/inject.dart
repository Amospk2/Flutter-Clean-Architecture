import 'package:get_it/get_it.dart';
import 'package:resultadoeleicao/features/home/data/datasource/get_candidato_datasource.dart';
import 'package:resultadoeleicao/features/home/data/datasource/remote/get_candidato_datasource_imp.dart';
import 'package:resultadoeleicao/features/home/data/repositories/get_candidato_repository_imp.dart';
import 'package:resultadoeleicao/features/home/domain/repositories/get_candidato_repository.dart';
import 'package:resultadoeleicao/features/home/domain/usercase/get_candidato_usercase.dart';
import 'package:resultadoeleicao/features/home/domain/usercase/get_candidato_usercase_imp.dart';
import 'package:resultadoeleicao/features/home/presentation/controllers/home_controller.dart';
import '../data/service/http_service.dart';
import '../domain/service/dio_http_service_imp.dart';

class Inject {
  static initialize() {
    GetIt getIt = GetIt.instance;
    // core
    getIt.registerLazySingleton<HttpService>(() => DioHttpServiceImp());

    // datasources
    getIt.registerLazySingleton<GetCandidatoDataSource>(
     ()=>GetCandidatoDataSourceImp(getIt())
    );
    // repositories
    getIt.registerLazySingleton<GetCandidatoRepository>(
      () => GetCadidatoRepositoryImp(getIt()),
    );
    // usecases
    getIt.registerLazySingleton<GetCandidatoUsercase>(
      () => GetCandidatoUseCaseImp(getIt()),
    );
    // controllers
    getIt.registerLazySingleton<HomeController>(
      () => HomeController(getIt()),
    );
  }
}