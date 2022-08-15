import 'package:frontend/app/core/exception/failure.dart';
import 'package:frontend/app/layers/data/datasources/person_datasource.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';
import 'package:frontend/app/layers/domain/repositories/person_repository.dart';

class PersonRepositoryImplementation implements PersonRepository {
  final PersonDatasource _personDatasource;

  PersonRepositoryImplementation(this._personDatasource); 

  @override
  Future<List<PersonEntity>> findAll() async {
    try {
      return await _personDatasource.findAll();
    } catch (e) {
      throw Failure('repository error');
    }    
  }
}