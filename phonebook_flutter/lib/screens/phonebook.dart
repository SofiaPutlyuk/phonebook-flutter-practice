import 'package:flutter/material.dart';

class Phonebook extends StatefulWidget {
  @override
  _PhoneBookState createState() => _PhoneBookState();
}

class _PhoneBookState extends State<Phonebook> {
  late TextEditingController nameController;
  late TextEditingController phoneController;
  late TextEditingController ageController;
  late TextEditingController cityController;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    phoneController = TextEditingController();
    ageController = TextEditingController();
    cityController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    ageController.dispose();
    cityController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Phonebook")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Name"),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter the user's name"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(labelText: "Phone"),
                keyboardType: TextInputType.phone,
                validator: (value) => value == null || value.isEmpty
                    ? "Enter the user's phone"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
                validator: (value) => value == null || value.isEmpty
                    ? "Enter the user's age"
                    : null,
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: cityController,
                decoration: InputDecoration(labelText: "City"),
                validator: (value) => value == null || value.isEmpty
                    ? "Enter the user's city"
                    : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print("Name: ${nameController.text}");
                    print("Phone: ${phoneController.text}");
                    print("Age: ${ageController.text}");
                    print("City ${cityController.text}");
                  }
                },
                child: Text("Save!"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
