import 'dart:io';

class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double areaTriangulo() {
    return (base * altura) / 2;
    }
  }

  class Retangulo {
  double comprimento;
  double largura;

  Retangulo(this.comprimento, this.largura);

  double areaRetangulo() {
    return (comprimento * largura);
    }
  }

   class Circulo {
  double raio;

  Circulo(this.raio);

  double areaCirculo() {
    return (3.14 * (raio * raio));
    }
  }

     class Quadrado {
  double lado;

  Quadrado(this.lado);

  double areaQuadrado() {
    return (lado * lado);
    }
  }

void main() {

  while (true) {
    print('Escolha oque irá calcular');
    print('1 - Área do Triângulo');
    print('2 - Área do Retangulo');
    print('3 - Área do Círculo');
    print('4 - Área do Quadrado');
    print('5 - Sair');


    String opcao = stdin.readLineSync()!;

    switch (opcao) {
      case '1':
        stdout.write("Digite o valor da base: ");
        double base = double.parse(stdin.readLineSync()!);

        stdout.write("Digite o valor da altura: ");
        double altura = double.parse(stdin.readLineSync()!);
        // Instanciamento
        Triangulo triangulo = Triangulo(base, altura);
        double areaT = triangulo.areaTriangulo();
        print('A área do triangulo é $areaT');
        break;

      case '2':
        stdout.write("Digite o valor do comprimento: ");
        double comprimento = double.parse(stdin.readLineSync()!);

        stdout.write("Digite o valor da largura: ");
        double largura = double.parse(stdin.readLineSync()!);

        // Instanciamento
        Retangulo retangulo = Retangulo(comprimento, largura);
        double areaR = retangulo.areaRetangulo();
        print('A área do retangulo é $areaR');
        break;

      case '3':
        stdout.write("Digite o valor do Raio: ");
        double raio = double.parse(stdin.readLineSync()!);

        // Instanciamento
        Circulo circulo = Circulo(raio);
        double areaC = circulo.areaCirculo();
        print('A área do triangulo é $areaC');
        break;

      case '4':
        stdout.write("Digite o valor do lado: ");
        double lado = double.parse(stdin.readLineSync()!);

        // Instanciamento
        Quadrado quadrado = Quadrado(lado);
        double areaQ = quadrado.areaQuadrado();
        print('A área do triangulo é $areaQ');
        break;

      case '5':
        print('Programa Finalizado');
        return;
      default:
        print('Opção inválida!');
        break;
    }
  }
}
