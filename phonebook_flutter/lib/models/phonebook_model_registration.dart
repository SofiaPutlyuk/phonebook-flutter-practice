class Registration {
  final String id;
  final String name;
  final String surname;
  final String city;
  Registration({
    required this.id,
    required this.name,
    required this.surname,
    required this.city
  });
  factory Registration.fromJson(Map<String,dynamic> json){
   return Registration(
   id:json["id"],
   name:json["name"],
   surname:json["surname"],
   city: json["city"]
   );
  }
  Map<String,dynamic> toJson(){
    return {
      "name":name,
      "surname":surname,
      "city": city
    };
  }
}