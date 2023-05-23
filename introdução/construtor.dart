class Animal {
  // Definição da classe Animal
  String nome;
  int idade;
  double peso;
  String raca;

  // Construtor da class Aimal na forma curta
  Animal(this.nome, this.idade, this.peso, this.raca);

  void exibirInformacoes() {
    print('Nome: $nome');
    print('Idade: $idade');
    print('Peso: $peso');
    print('Raça: $raca');
    print('-' * 70);
  }

  // Método com retorno para calcular a idade em meses
  int calcularIdadeEmMeses() {
    return idade * 12;
  }
}

void main() {
  // instanciando um animal
  Animal animal = Animal("Rex", 3, 10.5, "Labrador");
  // Chamada de método exibirInformações()
  animal.exibirInformacoes();
  // Chamada do métod calcularIdadeEmMeses()
  int idadeMeses = animal.calcularIdadeEmMeses();
  print("Idade em meses: $idadeMeses");
  print('-' * 70);

}