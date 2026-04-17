import "package:flutter/material.dart";

class RegistrationPhoneBook extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationPhoneBook> {
  late TextEditingController name;
  late TextEditingController surname;
  late TextEditingController city;
  GlobalKey<FormState> _registartionKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    name = TextEditingController();
    surname = TextEditingController();
    city = TextEditingController();
  }

  @override
  void dispose() {
    name.dispose();
    surname.dispose();
    city.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _registartionKey,
          child: Column(
            children: [
              TextFormField(
                controller: name,
                decoration: InputDecoration(labelText: "Name"),
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter your name" : null,
              ),
              TextFormField(
                controller: surname,
                decoration: InputDecoration(labelText: "Surname"),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter your surname"
                    : null,
              ),
              TextFormField(
                controller: city,
                decoration: InputDecoration(labelText: "City"),
                validator: (value) =>
                    value == null || value.isEmpty ? "Enter your city" : null,
              ),
              ElevatedButton(
                onPressed: () {
                  if(_registartionKey.currentState!.validate()){
                 print("Name: ${name.text}");
                 print("Surname: ${surname.text}");
                 print("City: ${city.text}");
                  }
                } ,
                child: Text("Account created!"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
