import 'dart:io';

main() {
 List<String> list = new List();
 // List<String> list2 = [];
 for (int i = 0; i < 5; i++) {
   stdout.write("Digite uma palavra : ");
   String text = stdin.readLineSync();
   list.add(text); // Adicionando valores 
 }

for (int i = 0; i < list.length; i++) {
   print("Item ${i+1} : ${list[i]}");
 }

 for (String valor in list){
   print(valor);
 }

 // Removendo valores de lists
 list.removeLast(); // Remove o ultimo
 print(list); // [a,b,c,d]
 list.removeAt(1); // Remove na posicao 1
 print(list);  // [a,c,d]
 
 // Buscando valores na lista
 stdout.write("Digite o valor a ser buscado : ");
 String palavra = stdin.readLineSync();
 int index = list.indexOf(palavra);
 print("Antes : " + list.toString());
 list.removeAt(index);
 print("Depois : " + list.toString());
}