void main() {
  // Cadenas o Strings
  var nombre =
      'Tony'; //dart identifica el tipo de dato de acuerdo a su contenido
  var apellido = 'Stark';

  nombre = 'Jorshua';

  //para imprimir variables usamos el simbolo $ junto al nombre de la variable
  print('$nombre $apellido');

  //Variable que nunca cambiara su valor en su tiempo de compilacion
  const primerNombre = 'Jorshua';
  const primerApellido = 'Hernandez';

  //Variable que se mantiene igual al momento se su primera asignacion
  final String segundoNombre = 'Alexander';
  final String segundoApellido = 'Jaimes';

  //? NUMEROS
  int empleado = 10;
  // Se pueden poner numeros desde menos infinito, hasta el infinito siempre y cuando no se usen decimales empleando el tipo int
  double posicion = 10.1;
  // se usando decimales con mayor precision

  print('$primerNombre + $segundoNombre + $primerApellido + $segundoApellido');
  print('$empleado $posicion');
}
