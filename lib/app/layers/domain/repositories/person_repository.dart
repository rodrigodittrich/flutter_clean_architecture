import 'package:frontend/app/layers/domain/entities/person_entity.dart';

abstract class PersonRepository {
  Future<List<PersonEntity>> findAll();
}