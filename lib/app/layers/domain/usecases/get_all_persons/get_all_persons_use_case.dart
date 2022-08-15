import 'package:frontend/app/layers/domain/entities/person_entity.dart';

abstract class GetAllPersonsUseCase {
  Future<List<PersonEntity>> call();  
}