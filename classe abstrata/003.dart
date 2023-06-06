abstract class Pessoa {
  void fala();
  void escreve();
}

class Diretor extends Pessoa {
  // É obrigado sobrescrever
  @override
  void fala() {
    print("O diretor falou...");
  }

  // É obrigado sobrescrever
  @override
  void escreve() {
    print("O diretor escreveu...");

  }
}

main() {
  Diretor almodovar = new Diretor();
  almodovar.fala();
  almodovar.escreve();
}