/*Escreva um programa em Dart para criar uma classe House com as
propriedades [id, nome, preço]. Crie um construtor para ela e crie 3
objetos. Adicione-os a uma lista e imprima todos os detalhes.*/

import 'dart:ffi';

class House{
  int id;
  String name;
  int price; 

  House(this.id, this.name, this.price);

  void printing(){
    print('Id: $id');
    print('Id: $name');
    print('Id: $price');
  }
}

void main(){
  var house1 = House(1, 'Apartamento', 500);
  var house2 = House(2, 'Casa', 1600);
  var house3 = House(3, 'Loft', 80000);


  house1.printing();
  house2.printing();
  house3.printing();
}