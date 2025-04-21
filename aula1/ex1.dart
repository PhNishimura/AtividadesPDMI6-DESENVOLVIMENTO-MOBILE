

class Laptop{
  int id;
  String nome;
  int ram; 

  Laptop(this.id, this.nome, this.ram); 

  void imprimir(){
    print('Id: $id');
    print('Nome: $nome');
    print('Ram: $ram');
  }
}

void main(){
  var laptop1 = Laptop(1, 'intel', 32);
  var laptop2 = Laptop(2, 'Hp', 16);
  var laptop3 = Laptop(3, 'Lenovo', 8);


  laptop1.imprimir();
  laptop2.imprimir();
  laptop3.imprimir();


}
