import 'dart:convert';
import 'package:frontend/app/core/converter/converter.dart' as con;
import 'package:frontend/app/layers/data/converter/person_converter.dart';
import 'package:frontend/app/layers/data/datasources/person_datasource.dart';
import 'package:frontend/app/layers/data/dto/person_dto.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';

class PersonDatasourceLocalImplementation implements PersonDatasource {
  
  @override
  Future<List<PersonEntity>> findAll() async {
    con.Converter converter = PersonConverter();
    List<PersonEntity> persons = [];
    List response = jsonDecode(personJson); 
    response.map((value) => persons.add(converter.createEntity(PersonDTO.fromMap(value)))).toList();
    return persons;
  }

}

var personJson = '''
  [
      {
          "id": 1,
          "firstName": "Jesus Cristo",
          "lastName": "Rei dos reis"
      },
      {
          "id": 2,
          "firstName": "Rodrigo",
          "lastName": "Dittrich"
      }
  ]
''';