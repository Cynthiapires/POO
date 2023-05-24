import 'dart:io';

class Calculadora {
  double valor1;
  double valor2;

  Calculadora(this.valor1, this.valor2);

  double calcularSoma() {
    return valor1 + valor2;
  }
  double calcularProduto() {
    return valor1 * valor2;
  }
  double calcularSubtracao() {
    return valor1 - valor2;
  }
  double calcularDivisao() {
    if (valor2 != 0) {
      return valor1 / valor2;
    } else {
      throw Exception("Divisão por zero não é permitida.");
    }
  }
  double calcularRestoDivisao() {
    if (valor2 != 0) {
      return valor1 % valor2;
    } else {
      throw Exception("Divisão por zero não é permitida.");
    }
  }
  double calcularDivisaoInteira() {
    if (valor2 != 0) {
      return (valor1 ~/ valor2).toDouble();
    } else {
      throw Exception("Divisão por zero não é permitida.");
    }
  }
}

void main() {
  stdout.write("Digite o primeiro valor: ");
  double valor1 = double.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo valor: ");
  double valor2 = double.parse(stdin.readLineSync()!);

  Calculadora calculadora = Calculadora(valor1, valor2);

  try {
    double soma = calculadora.calcularSoma();
    double produto = calculadora.calcularProduto();
    double subtracao = calculadora.calcularSubtracao();
    double divisao = calculadora.calcularDivisao();
    double restoDivisao = calculadora.calcularRestoDivisao();
    double divisaoInteira = calculadora.calcularDivisaoInteira();

    print("Soma: $soma");
    print("Produto: $produto");
    print("Subtração: $subtracao");
    print("Divisão: $divisao");
    print("Resto da divisão: $restoDivisao");
    print("Divisão inteira: $divisaoInteira");
  } catch (e) {
    print("Erro: $e");
  }
}
