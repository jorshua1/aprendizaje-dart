void main() {
  final perro = new Perro();
  final gato = new Gato();
  final pato = Pato();
  sonidoAnimal(perro);
  sonidoAnimal(gato);
  sonidoAnimal(pato);
}

// Una clase abstracta sirve para que otra clase pueda implementar el contenido de esta clase
abstract class Animal {
  int? patas;
  Animal();
  void emitirSonido();
}

// funcion que permite acceder y mostrar el metodo emitirSonido del animal que recibe como parametro
void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

// Esta clase debe implementar el contenido de la clase que hereda es decir de la abstracta (patas y metodo emitirSonido())
class Perro implements Animal {
  int? patas;
  void emitirSonido() => print('Wooff');
}

// Esta clase implementa el contenido de la clase abstracta y ademas implementa sus propios valores o funciones
class Gato implements Animal {
  int? patas;
  int?
      cola; //implementa un nuevo valor ademas de los que implementa de la clase abstracta

  void emitirSonido() => print('Nyaa');
}

class Pato implements Animal {
  int? patas;
  int? alas;

  void emitirSonido() => print('Cuack');
}
