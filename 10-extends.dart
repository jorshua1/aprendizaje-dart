void main() {
  // No se pueden instanciar clases abstractas por ende el codigo de abajo esta mal, se debe instancia una clase que extienda la clase abstracta
  //! final superman = new Personaje('Clark Kent');
  final superman = Heroe('Clark Kent', 'Volar');
  //*luego de instanciar una clase que extiende la abstracta el problema que se genera es por el constructor superior declarado en la clase abstracta, se debe acceder a el por medio de la palabra super
  print(superman);
//
  final doomsday = Villano('Dooms Day', 'Regeneracion');
  print(doomsday);
}

// Esta clase abstracta hara que las demas clases extiendad su contenido implementando el contenido de esta en si misma
abstract class Personaje {
  String? poder;
  String? nombre;

// por ende este constructor debe estar
  Personaje(this.nombre, this.poder);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  //! Se declara el constructor de la clase heroe pero aparence los siguientes errores
  //! Heroe( String nombre); el error que se indica en esta parte hace referencia a que se esta invocando el constructor sin inicializarse
  //? Para inicializar el constructor de la clase que se extiende con el valor que se pasa al momento de crear un objeto de la clase heroe se usa el punto de creacion de a instancia y se llama al super constructor indicandole el valor que este recibira

  Heroe(String nombre, String poder) : super(nombre, poder);
}

class Villano extends Personaje {
  int maldad = 100;

  Villano(String nombre, String poder) : super(nombre, poder);
}
