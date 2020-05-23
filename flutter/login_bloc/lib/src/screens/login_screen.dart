import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[
            emailField(bloc),
            passwordField(bloc),
            SizedBox(height: 20),
            submitButton(bloc)
          ]
        ),
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      // Sempre que acontecer uma mudanca na stream email, o método builder é chamado
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changeEmail,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "youemail@example.com",
            labelText: "Email Address",
            errorText: snapshot.error,
            icon: Icon(Icons.email)
          ),
        );
      }
    );
  }

  Widget passwordField(Bloc bloc){
    return StreamBuilder<Object>(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: "password",
            labelText: "Password",
            errorText: snapshot.error
          ),  
          obscureText: true,
        );
      }
    );
  }

  Widget submitButton(Bloc bloc) {
    return StreamBuilder<Object>(
      stream: bloc.submitValid,
      builder: (context, snapshot) {
        return RaisedButton(
          child: Text(
            "Login",
            style: TextStyle(
              color: Colors.white
            ),
          ),
          color: Colors.blue,
          onPressed: snapshot.hasData ? () => bloc.submit() : null ,
          );
      }
    );
  }

}