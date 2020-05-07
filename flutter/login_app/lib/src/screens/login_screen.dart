import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              emailField(),
              passwordField(),
              SizedBox(height: 20),
              submitButton()
            ],
            ),
          ),
        ),
      );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.person
        ),
        labelText: "Email",
        hintText: "seuemail@example.com",
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String email) {
        if (!email.contains("@")) {
          return "Please enter a valid email";
        }
        return null;
      },
      onSaved: (String email) {
        print(email);
      },
    );
  }

  Widget passwordField(){
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock
        ),
        labelText: "Password",
        hintText: "Password",
      ),
      obscureText: true,
      validator: (String password) {
        if (password.length < 6){
          return "Password must be at least 6 characters";
        }
        return null;
      },
      onSaved: (String password) {
        print(password);
      },
    );
  }

  Widget submitButton(){
    return RaisedButton(
      child: Text(
        "Submit",
        style: TextStyle(
        color: Colors.white
        ),
      ),
      onPressed: (){
        if(formKey.currentState.validate()){
          formKey.currentState.save();
        }
      },
      color: Colors.pink,
    );
  }
}
