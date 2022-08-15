import 'package:flutter/material.dart';
import 'package:frontend/app/layers/domain/entities/person_entity.dart';

class PersonComponent extends StatelessWidget {
  final PersonEntity personEntity;

  const PersonComponent({
    Key? key,
    required this.personEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text("${personEntity.firstName}"),
          Text("${personEntity.lastName}"),
        ]
      ),
    );    
  }
}