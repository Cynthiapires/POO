abstract class Animal {
  //Não pode ser instanciada INTERFACE)
//Posso ter um método sem corpo void fazerBarulho ();
  void comer() {
    print('O animal está comendo.');
  }
}

//As classes filhas estendem a Classe Abstrat
class Cachorro extends Animal {
//Sobrescrita
  @override
  void fazerBarulho() {
    //Obrigatório
    print('O cachorro está latindo.');
  }
}

void main() {
  Cachorro cachorro = new Cachorro();
  cachorro.fazerBarulho(); // Saída: O cachorro está latindo.
  cachorro.comer(); // Saída: O animal está comendo.
}
