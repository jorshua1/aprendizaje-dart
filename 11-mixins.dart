abstract class Animal {
  bool? vive;

  Animal(this.vive);
}

abstract class Mamifero extends Animal {
  bool? pelo;
  Mamifero(bool pelo, bool vive) : super(vive);
}

abstract class Ave extends Animal {
  int? alas;
  bool plumas = true;
  Ave(int alas, bool plumas, bool vive) : super(vive);
}

abstract class Pez extends Animal {
  bool? dulce;
  bool? salada;
  Pez(bool dulce, bool salada, bool vive) : super(vive);
}

//? mixins
abstract class Volador {
  void volar() => print('Estoy Volando');
}

abstract class Caminante {
  void caminar() => print('Estoy Caminando');
}

abstract class Nadador {
  void nadar() => print('Estoy Nadando');
}

//? Con la palabra "with" le indicamos a la clase que hara un mixing con la otra clase que se declaro
class Delfin extends Mamifero with Nadador {
  Delfin(bool pelo, bool vive) : super(pelo, vive);
  @override
  String toString() {
    // TODO: implement toString
    return 'tiene pelo?: $pelo, respira?: $vive';
  }
}

void main(List<String> args) {
  final delfin = Delfin(true, true);
  print(delfin);
  delfin.nadar();
}
