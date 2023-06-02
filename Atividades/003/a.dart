class Pessoa {
  String _nome ;
  int _idade ;

Pessoa([this._nome = '' , this._idade = 0]);
  String get nome {
    return _nome;
  }

  set nome(String novoNome) {
    _nome = novoNome;
  }

  int get idade {
    return _idade;
  }

  set idade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print("A idade não pode ser negativa.");
    }
  }

  void saudacao() {
    print("Olá, eu sou ${_nome}!");
  }
}

class Estudante extends Pessoa {
  String _curso ='';

  String get curso {
    return _curso;
  }

  set curso(String novoCurso) {
    _curso = novoCurso;
  }

  @override
  void saudacao() {
    print("Olá, eu sou ${_nome} e estudo ${_curso}!");
  }
}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.nome = "Sebas";
  pessoa.idade = 25;
  pessoa.saudacao();

  Estudante estudante = Estudante();
  estudante.nome = "Maria";
  estudante.idade = 20;
  estudante.curso = "Opeação de máquinas agrícolas ";
  estudante.saudacao();
}