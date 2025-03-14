/* Octávio Roberto Barassa / BP3038912 / 5º Semestre de ADS */

class Laptop {
  final int id;
  final String nome;
  final int ram;

  Laptop(this.id, this.nome, this.ram);

  @override
  String toString() {
    return "\n\t{\n\t\tid: ${this.id}\n\t\tnome: ${this.nome}\n\t\tram: ${this.ram}GB\n\t}\n";
  }
}

class House {
  final int id;
  final String nome;
  final double preco;

  House(this.id, this.nome, this.preco);

  @override
  String toString() {
    return "\n\t{\n\t\tid: ${this.id}\n\t\tnome: ${this.nome}\n\t\tpreco: R\$ ${this.preco}\n\t}\n";
  }
}

class Animal {
  final int id;
  final String nome;
  final String cor;

  Animal(this.id, this.nome, this.cor);
}

class Cat extends Animal {
  final String som;

  Cat(super.id, super.nome, super.cor, this.som);

  @override
  String toString() {
    return "\n\t{\n\t\tid: ${this.id}\n\t\tnome: ${this.nome}\n\t\tcor: ${this.cor}\n\t\tsom: ${this.som}\n\t}\n";
  }
}

class Camera {
  int id;
  String marca;
  String cor;
  double preco;

  Camera(this.id, this.marca, this.cor, this.preco);

  int getId() {
    return id;
  }

  String getMarca() {
    return marca;
  }

  String getCor() {
    return cor;
  }

  double getPreco() {
    return preco;
  }

  void setId(int id) {
    this.id = id;
  }

  void setMarca(String marca) {
    this.marca = marca;
  }

  void setCor(String cor) {
    this.cor = cor;
  }

  void setPreco(double preco) {
    this.preco = preco;
  }

  @override
  String toString() {
    return "\n\t{\n\t\tid: ${this.id}\n\t\tmarca: ${this.marca}\n\t\tcor: ${this.cor}\n\t\tpreco: R\$ ${this.preco}\n\t}\n";
  }
}

void exercicio1() {
  List<Laptop> laptops = [];

  for (var i = 1; i <= 3; i++) {
    laptops.add(
      Laptop(
        i,
        'Laptop $i',
        (i == 1 ? 8 : laptops[i - 2].ram) * (i == 3 ? 2 : i),
      ),
    );
  }

  print('\n$laptops\n');
}

void exercicio2() {
  List<House> houses = [];

  for (var i = 1; i <= 3; i++) {
    houses.add(House(i, 'Casa $i', (200000 * i).toDouble()));
  }

  print('\n$houses\n');
}

void exercicio3() {
  Animal cat = Cat(1, 'Gato 1', 'Laranja', 'miau');
  print(cat);
}

void exercicio4() {
  List<Camera> cameras = [];
  List<String> cores = ['Preto', 'Branco', 'Azul'];

  for (var i = 1; i <= 3; i++) {
    cameras.add(
      Camera(i, 'Marca $i', '${cores[i - 1]}', (200000 * i).toDouble()),
    );
  }

  print('\n$cameras\n');
}

void main() {
  print('============= Exercício 1 ============= ');
  exercicio1();
  print('============= Exercício 2 ============= ');
  exercicio2();
  print('============= Exercício 3 ============= ');
  exercicio3();
  print('============= Exercício 4 ============= ');
  exercicio4();
}
