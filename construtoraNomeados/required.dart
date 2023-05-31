import 'dart:io';

class Pessoa {
  String nome; 
  int idade;

  //Construtor nomeado
  Pessoa({required this.nome, required this.idade});
}

void main(List<String> args) {
  //O generic contém a classe Pessoa, ou seja, uma lista de objetos pessoas.
  List<Pessoa> pessoas = [];

  //Entrada de dados
  print('');
  for (int i = 1; i <= 3; i++) {
    print('Lista de pessoas $i');

    //Solicita o nome 
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    //Solicita a idade
    int idade = int.parse(stdin.readLineSync()!);

    //cria uma nova pessoa e adiciona à lista
    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade);
    pessoas.add(novaPessoa);

    print(''); // Pula uma nova linha
  }

  //Exibe os dados das pessoas
  print('Dados das pessoas');
  print('-'*70);
  for (var pessoa in pessoas) {
    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    print(''); //Pula uma linha 
  }
  print('-'*70);
}