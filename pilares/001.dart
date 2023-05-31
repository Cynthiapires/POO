class Pessoa {
  late String _nome;
  Pessoa({required String nome}) {
    _nome = nome;
  }

//Se você não utilizar getter e setter
//não consiguirá acessar o atributo nome
//do objeto pessao.
//Delete essas linhas para testar
  String get nome => _nome; // Getter

  set nome(String novoNome) {
    _nome = novoNome; //Setter
  }
}

void main() {
  Pessoa pessoa = Pessoa(nome: 'João');
  print(pessoa.nome); //Saída: João
  pessoa.nome = 'Maria';
  print(pessoa.nome); //Saída: Maria
}
