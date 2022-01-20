import 'dart:io';

//pegar peso
//pegar altura
//calcular e retorna imc
main() {
  CalcularImc();
}
//prograrma que Calcula IMC
CalcularImc() {
  print("----Digite seu peso");
 
  int peso = int.parse(stdin.readLineSync()!);
  // var textalt = null;
  print("-----Digite sua altura");
  String textalt = stdin.readLineSync()!;
  double altura = double.parse(textalt);
  double imc = calcimcExpre(peso, altura);

  ImprimirResultado(imc);
}
//Função que recebe  o peso e a altura e retorna imc
double calcimcExpre(int peso, double altura) {
  return peso / (altura * altura);
}
// imprimi o resultado baseado no Imc passado por parametro
ImprimirResultado(double imc) {
  print("------------------");
  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Peso normal");
  } else if (imc > 25 && imc < 29.9) {
    print("Sobrepeso");
  } else if (imc > 30 && imc < 34.9) {
    print("Obesidade grau 1");
  } else if (imc > 35 && imc < 39.9) {
    print("Obesidade grau 2");
  } else {
    print("Obesidade grau 3");
  }
}
