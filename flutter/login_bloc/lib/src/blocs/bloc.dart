import "dart:async";
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc with Validators {
  
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  // Saida
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password => _passwordController.stream.transform(validatePassword);
  Stream<bool> get submitValid => Rx.combineLatest2(email, password, (e, p) => true);

  // Entrada
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;
  
  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;
    print("Email : $validEmail, Password : $validPassword");
  }


  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}