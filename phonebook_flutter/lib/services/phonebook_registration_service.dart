import "dart:convert";
import "package:http/http.dart" as http;
import "../models/phonebook_model_registration.dart";
Future<void> createRegistrationUser(Registration registration) async{
final url = Uri.parse("mongodb://localhost:27017/");
final response = await http.post(
  url,
  headers:{"Content-Type":"application/json"},
  body: jsonEncode(registration.toJson())
);
}