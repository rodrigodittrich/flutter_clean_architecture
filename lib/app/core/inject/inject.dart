import 'package:frontend/app/layers/data/datasources/local/person_datasource_local_implementation.dart';
import 'package:frontend/app/layers/data/datasources/person_datasource.dart';
import 'package:frontend/app/layers/data/repositories/person_repository_implementation.dart';
import 'package:frontend/app/layers/domain/repositories/person_repository.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case_implementation.dart';
import 'package:frontend/app/layers/presentation/controllers/person_controller.dart';
import 'package:get_it/get_it.dart';

class Inject { 
  static Future<void> init() async {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<PersonDatasource>(() => PersonDatasourceLocalImplementation());
    getIt.registerLazySingleton<PersonRepository>(() => PersonRepositoryImplementation(getIt()));
    getIt.registerLazySingleton<GetAllPersonsUseCase>(() => GetAllPersonsUseCaseImplementation(getIt()));
    getIt.registerLazySingleton<PersonController>(() => PersonController(getIt()));
  }
}