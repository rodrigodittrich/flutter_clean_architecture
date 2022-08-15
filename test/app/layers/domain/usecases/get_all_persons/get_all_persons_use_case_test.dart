import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';
import 'package:frontend/app/layers/domain/repositories/person_repository.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case_implementation.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_all_persons_use_case_test.mocks.dart';

@GenerateMocks([PersonRepository])
main() {
  late GetAllPersonsUseCase getAllPersonsUseCase;  
  final mockPersonRepository = MockPersonRepository();
  List<PersonEntity> persons = [];

  setUp(() {
    getAllPersonsUseCase = GetAllPersonsUseCaseImplementation(mockPersonRepository);
    persons = [
      PersonEntity(id: 1, firstName: "Teste 1", lastName: "Teste"),
      PersonEntity(id: 2, firstName: "Teste 2", lastName: "Teste")
    ];
  });

  assertEqualsProperties(PersonEntity expected, PersonEntity actual) {
    expect(expected.id, actual.id); 
    expect(expected.firstName, equals(actual.firstName)); 
    expect(expected.lastName, equals(actual.lastName)); 
  }

  test('Should return a person list instance', () async {
    when(mockPersonRepository.findAll()).thenAnswer((_) => Future.value(persons));
    
    var result = await getAllPersonsUseCase();

    expect(result, isInstanceOf<List<PersonEntity>>());
  });

  test('Should return a person list size = 2 and validate first register', () async {
    when(mockPersonRepository.findAll()).thenAnswer((_) => Future.value(persons));
    
    var result = await getAllPersonsUseCase();

    expect(result.length, 2);
    assertEqualsProperties(result[0], persons[0]);
  });  
}