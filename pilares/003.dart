class Pessoa {
  late String _nome; // Atributo privado

  Pessoa({String? nome}) {
    //operador de coalescêsncia
    _nome = nome ?? 'Sem Nome';
  }

  String get nome => _nome; // gETTER

  set nome(String novoNome) {
    _nome = novoNome; // Setter
  }
}

void main() {
  Pessoa pessoa1 = Pessoa(); // Sem fornecer um nome
  print(pessoa1.nome); // Saída: Sem nome

  Pessoa pessoa2 = Pessoa(nome: 'João');
  print(pessoa2.nome); // Saída: João

  Pessoa pessoa3 = Pessoa(nome: 'Maria');
  print(pessoa3.nome); // Saída: Maria
}
