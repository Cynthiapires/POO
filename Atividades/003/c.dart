class Veiculo {
  String _marca;
  String _modelo;
  int _ano;

Veiculo([this._modelo = '', this._marca = '', this._ano = 0]);
  String get marca {
    return _marca;
  }

  set marca(String novaMarca) {
    _marca = novaMarca;
  }

  String get modelo {
    return _modelo;
  }

  set modelo(String novoModelo) {
    _modelo = novoModelo;
  }

  int get ano {
    return _ano;
  }

  set ano(int novoAno) {
    _ano = novoAno;
  }

  void descricao() {
    print("Marca: $_marca");
    print("Modelo: $_modelo");
    print("Ano: $_ano");
  }
}

class Carro extends Veiculo {
  int _portas = 0;

  int get portas {
    return _portas;
  }

  set portas(int novasPortas) {
    _portas = novasPortas;
  }

  @override
  void descricao() {
    super.descricao();
    print("Portas: $_portas");
  }
}

void main() {
  Veiculo veiculo = Veiculo();
  veiculo.marca = "Honda";
  veiculo.modelo = "Civic";
  veiculo.ano = 2021;
  veiculo.descricao();

  Carro carro = Carro();
  carro.marca = "Toyota";
  carro.modelo = "Corolla";
  carro.ano = 2022;
  carro.portas = 4;
  carro.descricao();
}
