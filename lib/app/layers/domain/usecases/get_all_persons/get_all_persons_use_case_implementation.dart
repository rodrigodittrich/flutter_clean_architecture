import 'package:frontend/app/layers/domain/entities/person_entity.dart';
import 'package:frontend/app/layers/domain/repositories/person_repository.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case.dart';

class GetAllPersonsUseCaseImplementation implements GetAllPersonsUseCase {
  final PersonRepository _personRepository;

  GetAllPersonsUseCaseImplementation(this._personRepository);

  @override
  Future<List<PersonEntity>> call() async {
    return await _personRepository.findAll();
  }

}