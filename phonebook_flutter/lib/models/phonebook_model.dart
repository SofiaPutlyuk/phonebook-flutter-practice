class Contact {
  final String id;
  final String name;
  final String phone;
  final int age;
  final String city;
  Contact({
    required this.id,
    required this.name,
    required this.phone,
    required this.age,
    required this.city
  });
  factory Contact.fromJson(Map<String, dynamic> json){
  return Contact(
    id:json['id'] ?? '',
    name:json['name'],
    phone:json['phone'],
    age:json['age'],
    city:json['city']
  );
}
Map<String,dynamic> toJson(){
  return{
    "name":name,
    "phone": phone,
    "age":age,
    "city":city
  };
}
}