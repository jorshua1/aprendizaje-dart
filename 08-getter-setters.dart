import 'dart:math';

void main() {
  final cuadrado = new Cuadrado(5);

  print('area:  ${cuadrado.lado * cuadrado.lado}');
  print('area con funcion:  ${cuadrado.calcularArea()}');
  // el getter se crea como metodo pero se declara como propiedad
  print('Area con getter:  ${cuadrado.area}');

  // Set del area
  cuadrado.prueba = 25;
  cuadrado.area = 100;
}

class Cuadrado {
  double lado;

  // un getter es un metodo que se declara como propiedad
  double get area {
    return this.lado * this.lado;
  }

  // el set lo que nos permite es agregar el valor de un dato pasandolo como propiedad en lugar de un metodo
  set prueba(double lado) {
    print('Set: $lado');
  }

  //? Indicamos el valor que recibe este setter y este le asigna el resultado a la variable lado declarado en la clase
  set area(double valor) {
    this.lado = sqrt(valor);
    print('El lado es de: ${this.lado}');
  }

  Cuadrado(double lado) : this.lado = lado;

  calcularArea() {
    return this.lado * this.lado;
  }
}
