import 'dart:io';

main() {
  bool condicao = true;
  while (condicao) {
  print("----------Escreva um Texto----------");
    String text = stdin.readLineSync()!;
    if (text == "sair") {
      condicao = false;
       print("-----------Programa Finalizado-----------");
    } else {
      print("Voçê digitou: $text");
    }
  }
}
