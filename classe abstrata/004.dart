abstract class Pessoa {
// Creating Abstract Method
void informar ();
}

class Jornalista extends Pessoa {
// é obrigado sobrescrever
@override
void informar ( ) {
print("Estou na classe Jornalista (Economia).");
print ("responsável: John");
}
}

class JornalistaEsportivo extends Pessoa {
// é obrigado sobrescrever
@override
void informar () {
print ("Estou na classe JornalistaEsportivo (Basquete).");
print("responsável: Jane");
}
}

void main() {
Jornalista john = new Jornalista();
john.informar();
print ('-' * 70);
Jornalistasportivo jane = new JornalistaEsportivo();
jane. informar ();
}