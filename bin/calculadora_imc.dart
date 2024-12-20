import 'dart:io';
import 'package:calculadora_imc/models/pessoa.dart'; // Certifique-se de que o caminho da importação está correto
import 'package:calculadora_imc/utils/utils.dart'; // Se necessário

void main() {
  print("==== Calculadora de IMC ====");

  String nome;
  do {
    print("Digite o seu nome:");
    nome = stdin.readLineSync()?.trim() ?? "";
    if (nome.isEmpty) {
      print("O nome não pode ser vazio. Tente novamente!");
    }
  } while (nome.isEmpty);

  double peso = Utils.lerNumero("Digite o seu peso (em kg):");
  double altura = Utils.lerNumero("Digite a sua altura (em metros):");

  Pessoa pessoa = Pessoa(nome, peso, altura); // Criando o objeto Pessoa

  double imc = pessoa.calcularIMC(); // Chamando o método calcularIMC

  print("\n==== Resultado ====");
  print("Olá, ${pessoa.nome}!");
  print("Seu IMC é: ${imc.toStringAsFixed(2)}");
  print("Classificação: ${pessoa.classificacaoIMC(imc)}");
  print("====================");
}
