import 'dart:io';

main() {

  /* for (int i = 0; i < 10; i ++) {
    print("Ola numero $i");
  }

  int l = 0;
  while (l < 10) {
    print("While numero $l");
    l++;
  } */

  bool condicao = true;
  while (condicao) {
    // print("Escreva uma palavra : ");
    stdout.write("Escreva uma palavra : ");
    String texto = stdin.readLineSync();
    if (texto == "sair") {
      condicao = false;
      print("Saindo...");
    }
  }

  // FOR IN MOSTRADO NO ARQUIVO DE LOOPS
}