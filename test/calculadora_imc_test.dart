import 'package:test/test.dart'; // Importação para testes
import 'package:calculadora_imc/models/pessoa.dart'; // Importação correta da classe Pessoa

void main() {
  test('Cálculo de IMC', () {
    // Criando uma instância da classe Pessoa
    Pessoa pessoa = Pessoa('João', 70.0, 1.75);

    // Calculando o IMC
    double resultado = pessoa.calcularIMC();

    // Esperando que o IMC seja aproximadamente 22.86
    expect(resultado, closeTo(22.86, 0.01));
  });

  test('Classificação de IMC', () {
    // Criando uma instância da classe Pessoa
    Pessoa pessoa = Pessoa('João', 70.0, 1.75);

    // Calculando o IMC
    double imc = pessoa.calcularIMC();

    // Verificando a classificação do IMC
    String classificacao = pessoa.classificacaoIMC(imc);

    // Esperando que a classificação seja "Saudável"
    expect(classificacao, "Saudável");
  });
}
