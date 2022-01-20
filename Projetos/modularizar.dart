import 'dart:io';

  List<String> produtos = []; //  variavel global
main() {
 
  bool condicao = true;
  while (condicao) {
    print("-------Adicone o Produto---------");
    String texto = stdin.readLineSync()!;
    if (texto == "sair") {
      print("------TERMINOU O PROGRAMA----------");
      condicao = false;
    } else if (texto == "imprimir") {
      imprimir();
    } else if (texto == "remover") {
      print("-------Remover Produto---------");
      remover();
    } else {
      produtos.add(texto);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

// modularizando e variavel global
//variavel global 1 passar por parametro deixar ela global
imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("ITEM $i-${produtos[i]}");
  }
}

remover() {
  imprimir();
  int item = int.parse(stdin.readLineSync()!);
  produtos.removeAt(item);
  print("-------Produto Removido---------");
}
