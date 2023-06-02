class Local {
  String _nome;
  String _pais;
  String _descricao;

  Local([this._nome = '', this._descricao ='', this._pais='']);

  String get nome {
    return _nome;
  }

  set nome(String novoNome) {
    _nome = novoNome;
  }

  String get pais {
    return _pais;
  }

  set pais(String novoPais) {
    _pais = novoPais;
  }

  String get descricao {
    return _descricao;
  }

  set descricao(String novaDescricao) {
    _descricao = novaDescricao;
  }

  void informacoes() {
    print("Local: $_nome");
    print("País: $_pais");
    print("Descrição: $_descricao");
  }
}

class DestinoTuristico extends Local {
  int _pontuacao=0;

  int get pontuacao {
    return _pontuacao;
  }

  set pontuacao(int novaPontuacao) {
    _pontuacao = novaPontuacao;
  }

  @override
  void informacoes() {
    super.informacoes();
    print("Pontuação: $_pontuacao");
  }
}

void main() {
  Local local = Local();
  local.nome = "Machu Picchu";
  local.pais = "Peru";
  local.descricao =
      "Machu Picchu é uma cidade antiga dos Incas localizada nos Andes peruanos.";
  local.informacoes();

  DestinoTuristico destino = DestinoTuristico();
  destino.nome = "Torre Eiffel";
  destino.pais = "França";
  destino.descricao =
      "A Torre Eiffel é uma torre de ferro localizada em Paris, um dos principais pontos turísticos do mundo.";
  destino.pontuacao = 9;
  destino.informacoes();
}
