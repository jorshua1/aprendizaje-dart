void main() {
  final nombre = 'prueba';
  final texto = 'Hasta luego';
  saludar(nombre);
  print('Usando funciones con parametros opcionales');
  despedirse();
  print('Funcion con parametro recibido');
  despedirse(texto);
  // suma(numA, numB); el editor va a indicar que esta funcion tiene un problema dado a que se estan pasando datos no existentes por ende deben ser instanciados y tambien deben ser del tipo que esta solicitando la funcion

  suma(14, 24, 'prueba de mensaje opcional');
  //Esta funcion pide los dos valores, al oprimir ctrl + espacio el editor nos enseñara los datos que pide la funcion
  saludo(texto1: 'prueba uno', texto2: 'prueba dos');
  //Esta funcion puede recibir parametros nulos
  saludo2();
  //! Esta funcion pide valores como parametros obligatorios sin necesidad de usar un null safety o indicar valores de antemano para los parametros de la funcion
  saludo3(texto4: 'Texto 4', texto5: 'Texto 5');
}

void saludar(nombre) {
  print('Hola mundo $nombre');
}

//! void despedirse(String frase = 'adios') este tipo de dato opcional si la funcion no recibe parametros no es permitido, para solucionarlo podemos encerrar el parametro que recibe la funcion de una forma como si fuera asignado como una lista, esto hace que se reciba este dato como opcional o sino se ejecuta el que esta predefinido por defecto

void despedirse([String frase = 'Adios']) {
  print(frase);
}

//? solicito que ingrese dos valores enteros obligatorios y adicionalmente podemos pasarle una cadena que es completamente opcional
void suma(int numA, numB, [String saludo = 'Mensaje opcional']) {
  final adicion = numA + numB;
  print('$adicion + $saludo');
}

//? la funcion tiene valores asignados
void saludo({String texto1 = 'Texto uno', String texto2 = 'Texto dos'}) {
  print('$texto1 $texto2');
}

//* podemos hacer que la funcion reciba parametro nulos indicandole el signo de pregunta
void saludo2({String? texto3}) {
  print('$texto3');
}

//? para hacer que la funcion siempre exija un valor usamos la palabra requiered, esto nos permite hacer que cada vez que se asigne un parametro en una funcion no sea necesario indicar de ante mano que debe tener un valor o declarar que recibe valores null
void saludo3({required String texto4, required String texto5}) {
  print('$texto4, $texto5');
}
