void main() {
  List numeros = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
  ]; // Esta lista puede recibir valores de tipo dinamico

  List? numNulos = []; // Esta lista puede recibir valores de tipo nulos

  numeros.add(11); //añadimos el valor 11 a la lista numeros

  print(numeros); //imprimo la lista numeros

  print(numeros[5]); //imprime la 6ta posicion de la lista

  //! Como numeros es una lista de tipo dinamico perfectamente podemos hacer esto
  numeros.add('Jorshua');
  //! y esto insertara un string dentro de una lista que principalmente contenia elementos de tipo entero
  print(numeros); // Salida = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, Jorshua]

  //? Lo ideal seria definir el tipo de dato que manejara la lista
  List<int> secuencia = [1, 2, 3, 4];

  print(secuencia);

  // secuencia.add('jorshua'); //! indica que hay error porque estamos ingresando un tipo de dato que no maneja esta lista

  // Metodo estatico, es una funcion que puedo llamarla sin crear una instancia de la misma
}
