abstract class Animal {
  void fazerSom();
}

class Cachorro implements Animal {
  @override
  void fazerSom() {
    print('0 cachorro está latindo...');
  }
}

class Gato implements Animal {
  @override
  void fazerSom() {
    print('0 gato está miando...');
  }
}

void main() {
  List<Animal> animais = [];

  Animal cachorro = Cachorro();
  Animal gato = Gato();

  animais.add(cachorro);
  animais.add(gato);

  for (Animal animal in animais) {
    animal.fazerSom();
  }
}
