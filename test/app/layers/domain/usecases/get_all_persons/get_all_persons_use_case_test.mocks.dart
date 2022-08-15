// Mocks generated by Mockito 5.3.0 from annotations
// in frontend/test/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:frontend/app/layers/domain/entities/person_entity.dart' as _i4;
import 'package:frontend/app/layers/domain/repositories/person_repository.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [PersonRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockPersonRepository extends _i1.Mock implements _i2.PersonRepository {
  MockPersonRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<List<_i4.PersonEntity>> findAll() => (super.noSuchMethod(
          Invocation.method(#findAll, []),
          returnValue:
              _i3.Future<List<_i4.PersonEntity>>.value(<_i4.PersonEntity>[]))
      as _i3.Future<List<_i4.PersonEntity>>);
}