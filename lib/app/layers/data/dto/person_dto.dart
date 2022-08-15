class PersonDTO {
  int? id;
  String? firstName;
  String? lastName;

  PersonDTO({
    this.id,
    this.firstName,
    this.lastName,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(firstName != null){
      result.addAll({'firstName': firstName});
    }
    if(lastName != null){
      result.addAll({'lastName': lastName});
    }
  
    return result;
  }

  factory PersonDTO.fromMap(Map<String, dynamic> map) {
    return PersonDTO(
      id: map['id']?.toInt(),
      firstName: map['firstName'],
      lastName: map['lastName'],
    );
  }
}