import 'dart:io';

class Utils {
  static double lerNumero(String mensagem) {
    while (true) {
      try {
        print(mensagem);
        return double.parse(stdin.readLineSync() ?? "0");
      } catch (e) {
        print("Entrada inválida! Digite um número válido.");
      }
    }
  }
}
