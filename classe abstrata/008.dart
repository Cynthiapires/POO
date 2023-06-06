abstract class Poliglota {
  void falarLingua();
}

abstract class MasterChef {
  void cozinhar();
}

abstract class Pessoa {
  void falar() {
    print('Uma pessoal Está falando alguma coisa... \n');
  }
}

class Medico extends Pessoa implements Poliglota {
  @override
  void falarLingua() {
    print('O médico fala 3 idiomas. ');
    print('implentação: Poliglota');
  }
}

class Arquiteto extends Pessoa implements Poliglota, MasterChef {
  @override
  void falarLingua() {
    print('O arquiteto fala 4 línguas');
    print('- implentação: Poliglota');
  }

  @override
  void cozinhar() {
    print('Faz frango com quiabo');
    print('- implentação: Masterchef\n');
  }
}

void main() {
  Medico john = new Medico();
  john.falarLingua();
  john.falar();
  Arquiteto jane = new Arquiteto();
  jane.falarLingua();
  jane.cozinhar();
}
