import "dart:convert";
import "package:http/http.dart" as http;
import "package:phonebook_flutter/models/phonebook_model.dart";
Future<void> createContact(Contact contact) async {
   final url = Uri.parse("mongodb://localhost:27017/");
   final response = await http.post(
    url,
    headers:{"Contatent-Type":"application/json"},
    body:jsonEncode(contact.toJson())
    );
    if(response.statusCode == 201){
    print("Contact created!");
    } else {
      print("${response.body}");
    }
}