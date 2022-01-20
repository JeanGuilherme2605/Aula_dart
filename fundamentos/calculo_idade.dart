import 'dart:io';

main() {
  print("Digite nome e Idade");

  var nome = stdin.readLineSync();
  var input; // = null; //inicilaializar a variavel tanto String como numero.
  input = stdin.readLineSync();
  var idade = int.parse(input!);

  if (idade >= 18 && idade >= 50) {
    print(nome);
    print("melhor idade");
    print("maior de idade");
  } else if (idade >= 18 && idade < 50) {
    print("adulto");
    print("maior de idade");
  } else if (idade >= 12 && idade < 18) {
    print("adolescente");
    print("menor de idade");
  } else {
    print("criança");
    print("menor de idade");
  }
}
