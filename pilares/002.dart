class Conta {
  double _saque; //0 atributo saque é privado
  double saldo;

//Construtor com parâmetros com valores default
  Conta([this._saque = 100.0, this.saldo = 1000.0]);
//Como o atributo não pode ser acessado diretamente
//Vamos usar get e set para configurá-lo
//Fazendo isso não acessamos diretamente nossos atributos
//Atenção: Só coloque essas configurações se realmente precisar
//proteger seu atributo

//get - pegando o valor
//get não possui parâmetro e retorna valor
  double get getSaque {
    return this._saque;
//return 400.0;
  }

//set - configurando o valor
//set possui parâmetro, mas não retorna valor

  set setSaque(double saque) {
//Posso fazer aqui verificações e validações
    if (saque > 0 && saque <= saldo) {
      this._saque = saque;
    } else {
      print('Valor indisponível!');
    }
  }
}

void main() {
//Criando um objeto conta
Conta conta = new Conta ();

//Com o valor de saque configurado (set)
//Posso atribuir valor ao saque
//_saque fica sem alteração, ou seja, valor 100 
////não precisa de parênteses

conta.setSaque = 500;

//Imprimindo
print ('Valor sacado: ${conta.getSaque}');
}
