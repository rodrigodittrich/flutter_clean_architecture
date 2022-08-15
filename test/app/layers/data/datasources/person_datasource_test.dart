import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/app/layers/data/datasources/local/person_datasource_local_implementation.dart';
import 'package:frontend/app/layers/data/datasources/person_datasource.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';

void main() {

  test('Must return an instance of the List<PersonEntity> object With size = 2', () async {
    PersonDatasource personDatasource = PersonDatasourceLocalImplementation();

    var result = await personDatasource.findAll();

    expect(result, isNotNull);
    expect(result, isInstanceOf<List<PersonEntity>>());
    expect(result.length, equals(2));
  });
  
}