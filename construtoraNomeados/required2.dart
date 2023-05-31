import 'dart:io';

class Pessoa {
  String nome;
  int idade; 
  //interesses é um atributo do tipo lista 
  List<String>? interesses;
  // O modificador required é usado em parâmetros
  //Construtores em dart para indicar que o argumento 
  //correspondente é obrigatório
  Pessoa({required this.nome, required this.idade, this.interesses});
}

void main(List<String> args) {
  List<Pessoa> pessoas = [];


  for(int i = 1; i <= 3; i++) {
    print('Lista de Pessoas: $i');
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    //O usuário deve digitar os interesses separados por vírgula.
    stdout.write('Interesses (separados por vírgulas): ');
    String interessesInput = stdin.readLineSync()!;
    //Em seguida, utilizamos o método split para separar os 
    //Interesses em uma lista de Strings.
    List<String> interesses = interessesInput.split(',');

    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade);
      pessoas.add(novaPessoa);

    print('');
  }

  print('-'*70);
  print('Dados das pessoas: ');
  for (var pessoa in pessoas) {
    print('Nome: ${pessoa.nome}');
    print('Idade: ${pessoa.idade}');
    //Precisa do ! na propriedade interesse por causa do nullSafety
    print('Interesses: ${pessoa.interesses!.join(',')}');
    print('');
  }
  print('-'*70);
}