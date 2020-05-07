import 'package:flutter/material.dart';
import '../mixins/validate_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Validate{
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
      validator: validateEmail,
      onSaved: (String email) {
        this.email = email;
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
      validator: validatePass,
      onSaved: (String password) {
        this.password = password;
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
          print("Email : $email, Password : $password");
        }
      },
      color: Colors.pink,
    );
  }
}
