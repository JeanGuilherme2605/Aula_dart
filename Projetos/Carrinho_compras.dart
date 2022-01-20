import 'dart:io';

main() {
  List<String> produtos = [];
  bool condicao = true;
  while (condicao) {
    print("-------Adicone o Produto---------");
    String texto = stdin.readLineSync()!;
    if (texto == "sair") {
      print("------TERMINOU O PROGRAMA----------");
      condicao = false;
    } else if (texto == "imprimir") {
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i-${produtos[i]}");
      }
    } else if (texto == "remover") {
      print("-------Remover Produto---------");
      for (var i = 0; i < produtos.length; i++) {
        print("ITEM $i-${produtos[i]}");
      }
      int item = int.parse(stdin.readgit LineSync()!);
      produtos.removeAt(item);
      print("-------Produto Removido---------");
    } else {
      produtos.add(texto);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}
