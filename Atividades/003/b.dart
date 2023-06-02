class Livro {
  String _titulo;
  String _autor;
  int _anoPublicacao;

Livro([this._titulo = '', this._autor ='', this._anoPublicacao = 0]);
  String get titulo {
    return _titulo;
  }

  set titulo(String novoTitulo) {
    _titulo = novoTitulo;
  }

  String get autor {
    return _autor;
  }

  set autor(String novoAutor) {
    _autor = novoAutor;
  }

  int get anoPublicacao {
    return _anoPublicacao;
  }

  set anoPublicacao(int novoAnoPublicacao) {
    _anoPublicacao = novoAnoPublicacao;
  }

  void detalhes() {
    print("Título: $_titulo");
    print("Autor: $_autor");
    print("Ano de publicação: $_anoPublicacao");
  }
}

class LivroFiccao extends Livro {
  String _genero = '';

  String get genero {
    return _genero;
  }

  set genero(String novoGenero) {
    _genero = novoGenero;
  }

  @override
  void detalhes() {
    super.detalhes();
    print("Gênero: $_genero");
  }
}

void main() {
  Livro livro = Livro();
  livro.titulo = "Dom Casmurro";
  livro.autor = "Machado de Assis";
  livro.anoPublicacao = 1899;
  livro.detalhes();

  LivroFiccao livroFiccao = LivroFiccao();
  livroFiccao.titulo = "1984";
  livroFiccao.autor = "George Orwell";
  livroFiccao.anoPublicacao = 1949;
  livroFiccao.genero = "Distopia";
  livroFiccao.detalhes();
}
