import 'package:flutter/material.dart';

class Validate {

  String validatePass(String password) {
    if (password.length < 6){
      return "Password must be at least 6 characters";
    }
    return null;
  }

  String validateEmail (String email) {
    if (!email.contains("@")) {
      return "Please enter a valid email";
    }
    return null;
  }

}