import 'dart:io';

class Idade {
  int ano;
  int anoAtual;

  Idade(this.ano, this.anoAtual);

 
  int calcularSubtracao() {
    return ano - anoAtual;
  }
}

void main() {
  stdout.write("Digite o primeiro valor: ");
  int ano = int.parse(stdin.readLineSync()!);

  stdout.write("Digite o segundo valor: ");
  int anoAtual = int.parse(stdin.readLineSync()!);

  Idade idade = Idade(ano, anoAtual);

  try {
    int subtracao = idade.calcularSubtracao();
    print("Subtração: $subtracao");
     } catch (e) {
    print("Erro: $e");
  }
}