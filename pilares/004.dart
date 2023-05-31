import 'dart:io';

class Pessoa {
late String _nome;
late int _idade;
late List<String> _interesses;

Pessoa ({String nome = '', int idade = 0, List<String>? interesses}) {
_nome = nome;
_idade = idade;
_interesses = interesses ?? [];
}

String get nome => nome;

set nome (String novoNome) {
nome = novoNome;
}

int get idade => _idade;

set idade (int novaldade) {
_idade = novaldade;
}

List<String> get interesses =>
interesses;
set interesses (List<String> novosInteresses) {
interesses = novosInteresses;
}
}

void main() {
print('');
print ('--- Cadastro de Pessoa --');
print ('-' * 70);

stdout.write('Digite o nome: ');
String nome = stdin.readLineSync()!;

stdout.write('Digite a idade: ');
int idade = int.parse(stdin.readLineSync() !);

stdout.write('Digite os interesses (separados por vírgula): ');
List<String> interesses = stdin.readLineSync()!.split(',');

Pessoa pessoa = Pessoa (nome: nome, idade: idade, interesses: interesses);
print ('\n--- Dados da Pessoa ---'); 
print ('Nome: ${pessoa.nome}');
print ('Idade: ${pessoa.idade}');
print ('Interesses: ${pessoa. interesses}');
print('-' * 70);
print ('');
}