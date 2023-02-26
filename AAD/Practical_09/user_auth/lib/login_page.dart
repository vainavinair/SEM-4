// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:user_auth/user_db.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
  bool authenticate() {
    UserDb user = UserDb();
    return user.authenticate(username.text, password.text);
  }

  void handleSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      if (authenticate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("You have been logged in successfully"),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Invalid credentials"),
          ),
        );
      }
    }
  }

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Login Page"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'USERNAME',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                controller: username,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                onEditingComplete: () {
                  handleSubmit(context);
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'PASSWORD',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                controller: password,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cannot be empty";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {
                      handleSubmit(context);
                    },
                    child: Text("LOGIN"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
