import 'package:frontend/app/core/converter/converter.dart';
import 'package:frontend/app/layers/data/dto/person_dto.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';

class PersonConverter implements Converter<PersonEntity, PersonDTO> {

  @override
  PersonDTO createDto(PersonEntity entity) => PersonDTO(
    firstName: entity.firstName,
    lastName: entity.lastName
  );

  @override
  PersonEntity createEntity(PersonDTO dto) => PersonEntity(
    id: dto.id,
    firstName: dto.firstName,
    lastName: dto.lastName
  );

}  