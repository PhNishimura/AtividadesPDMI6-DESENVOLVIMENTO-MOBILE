
class Animal {
  int id;
  String nome;
  String cor;
  
  
  Animal(this.id, this.nome, this.cor);
  

  void imprimir() {
    print('ID: $id');
    print('Nome: $nome');
    print('Cor: $cor');
  }
}

// Classe Cat que herda de Animal
class Cat extends Animal {
  String som;
  
 
  Cat(int id, String nome, String cor, this.som) : super(id, nome, cor);
  

  @override
  void imprimir() {
    super.imprimir(); 
    print('Som: $som');
  }
}

void main() {

  var meuGato = Cat(1, 'Mingau', 'Branco', 'Miau');
  

  print('Detalhes do Gato:');
  print('-----------------');
  meuGato.imprimir();
}