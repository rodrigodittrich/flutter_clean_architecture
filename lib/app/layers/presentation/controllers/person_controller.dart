import 'package:flutter/cupertino.dart';
import 'package:frontend/app/core/exception/failure.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';
import 'package:frontend/app/layers/domain/usecases/get_all_persons/get_all_persons_use_case.dart';

class PersonController {
  final GetAllPersonsUseCase _getAllPersonsUseCase;
  List<PersonEntity> persons = [];

  PersonController(this._getAllPersonsUseCase);

  Future getPersons() async {
    persons = [];
    try {
      persons = await _getAllPersonsUseCase();
    } on Failure catch (e) {
      debugPrint("Failure ${e.message}");
    } catch (e) {
      debugPrint("error");
    } 
  }

}