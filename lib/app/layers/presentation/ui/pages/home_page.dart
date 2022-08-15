import 'package:flutter/material.dart';
import 'package:frontend/app/layers/presentation/controllers/person_controller.dart';
import 'package:frontend/app/layers/presentation/ui/component/person_component.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _personController = GetIt.I.get<PersonController>();

  @override
  Widget build(BuildContext context) {
    _personController.getPersons();
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"), centerTitle: true),
      body: FutureBuilder(            
        future: _personController.getPersons(),
        builder: (context, persons) {
          if(_personController.persons.isEmpty) return const Center(child: Text("Nenhum cliente encontrado!"));
          return ListView.builder(                  
            itemBuilder: (context, index) {
              return PersonComponent(personEntity: _personController.persons[index]);
            },                  
            itemCount: _personController.persons.length
          );
        }
      ),
    );    
  }
}