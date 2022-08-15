import 'package:frontend/app/layers/domain/entities/person_entity.dart';

abstract class PersonDatasource {
  Future<List<PersonEntity>> findAll();
}