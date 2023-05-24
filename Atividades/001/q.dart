import 'dart:io';

class CalculoImc {
  double peso;
  double altura;

  CalculoImc(this.peso, this.altura);

  double imc() {
    return (peso / (altura*2));
    }
  }

  void main() {
    // Entrada de dados
      print('insira seu peso (kg):');
      double peso = double.parse(stdin.readLineSync()!);
      print('Insira sua alturda (m):');
      double altura = double.parse(stdin.readLineSync()!);
      
     // Instanciamento
        CalculoImc calculoImc = CalculoImc(peso, altura);
        double produto = calculoImc.imc();
        print('A área do triangulo é $produto');
    

      //operador de produto

      // Calculando o IMC
    print('Seu IMC é igual a $peso / ($altura*2)= $produto ');

        if (produto < 18.5) {
          print ('Abaixo do peso');
        } else if (produto < 25) {
          print ('Peso normal');
        } else if (produto < 30) {
          print ('Sobrepeso');
        } else if (produto < 35) {
          print ('Obesidade Grau 1');
        } else if (produto < 40) {
          print ('Obesidade Grau 2');
        } else {
          print ('Obesidade Grau 3');
        }
      }
