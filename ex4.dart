class Camera {

  int _id;
  String _marca;
  String _cor;
  double _preco;


  Camera(this._id, this._marca, this._cor, this._preco);


  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;


  set id(int novoId) {
    if (novoId > 0) {
      _id = novoId;
    } else {
      print('ID deve ser maior que zero');
    }
  }

  set marca(String novaMarca) {
    if (novaMarca.isNotEmpty) {
      _marca = novaMarca;
    } else {
      print('Marca não pode ser vazia');
    }
  }

  set cor(String novaCor) {
    if (novaCor.isNotEmpty) {
      _cor = novaCor;
    } else {
      print('Cor não pode ser vazia');
    }
  }

  set preco(double novoPreco) {
    if (novoPreco >= 0) {
      _preco = novoPreco;
    } else {
      print('Preço não pode ser negativo');
    }
  }


  void imprimir() {
    print('''
ID: $_id
Marca: $_marca
Cor: $_cor
Preço: R\$${_preco.toStringAsFixed(2)}
--------------------------''');
  }
}

void main() {

  var camera1 = Camera(1, 'Canon', 'Preta', 2500.00);
  var camera2 = Camera(2, 'Nikon', 'Prata', 3200.50);
  var camera3 = Camera(3, 'Sony', 'Vermelha', 1800.75);


  print('Detalhes das Câmeras:');
  print('=====================');
  camera1.imprimir();
  camera2.imprimir();
  camera3.imprimir();


  print('\nModificando propriedades da primeira câmera:');
  camera1.marca = 'Fujifilm'; 
  camera1.preco = -100;     
  camera1.preco = 2700.00;    


  print('\nDetalhes atualizados da primeira câmera:');
  camera1.imprimir();
}