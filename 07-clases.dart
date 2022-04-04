import 'dart:convert';

void main() {
  //* Creo una instancia de la clase heroe junto a los parametros que esta pide para su constructor
//!Wolverine
  final wolverine = Heroe(nombre: 'logan', poder: 'Garras adamantium');
  print(wolverine);

//!Spider-man
  final spiderman = Heroe(nombre: 'Peter parker', poder: 'Fuerza sobrehumana');
  print(spiderman);

//! ironman
  final rawJson = {'nombre': 'Tony', 'poder': 'Dinero'};
  final ironman = Heroe.fromJson(rawJson);
  print(ironman);

//! Duende verde
  final duende = Villano(nombre: 'Duende', poder: 'Tecnologia');
  print(duende);
//! Ryhno
  final villanoJson = {'nombre': 'Ryhno', 'poder': 'Super fuerza'};
  final ryhno = Villano.fromJson(villanoJson);
  print(ryhno);
}

//? Creacion de la clase heroe
class Heroe {
  String? nombre;
  String? poder;

  //? Creacion del constructor
  // para crear el constructor no es necesario escribir la palabra constructor sino el nombre de la clase y los parametros que esta requiere, usamos el require para poder recibir los valores desde la entrada y esta tambien indique que valores requiere el constructor de la clase al momento de crear una nueva instancia de esta
  Heroe({required this.nombre, required this.poder});

  //? constructor con nombre
  //! previamente se decidio que esta clase puede usar nulos para el ejemplo de los constructores con nombre
  Heroe.fromJson(Map<String, String> json) {
    // el signo de exclamacion "!" lo que hace es decirle al compilador de dart que confie en nosotros de que si estamos pasando el parametro que esta solicitando el constructor
    this.nombre = json['nombre']!;
    // si el parametro que recibe poder es nulo el cambia su contenido por el valor por defecto
    this.poder = json['poder'] ?? 'no tiene poderes';
  }

  @override
  String toString() {
    return 'Heroe: ${this.nombre}, poder: ${this.poder}';
  }
}

class Villano {
  //* obligo a que si o si debe recibir valores y no manejar nulos
  String nombre;
  String poder;

  Villano({required this.nombre, required this.poder});

//! constructor con nombre diferente y recibe valores no nulos
//? el operador " : " lo que hace es ejecutar las lineas siguientes cuando se cree la instancia de este constructor
  Villano.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        // a diferencia del constructor de heroe, en esta linea superior se usa coma como continuidad de la ejecucion
        this.poder = json['poder'] ?? 'No tiene poderes';

  @override
  String toString() {
    // TODO: implement toString
    return 'Villano: ${this.nombre}, poder: ${this.poder}';
  }
}
