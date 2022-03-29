void main() {
  //?BOOLEANOS
  bool isActive = true;

  //* CONDICIONALES

  if (isActive) {
    print('Esta Activo');
  } else {
    print('Esta inactivo');
  }

  //! VALORES NULOS
  // bool seActivo = null;
  // esta declaracion de variable no es posible dado a que no se puede asignar un booleano como nulo a no ser de que este permita el manejo de este tipo de dato

  bool? seActivo = null;
  // como en el comentario anterior, si se asigna para que el booleano pueda manejar nulos este eliminara el error

  if (seActivo == null) {
    print('El objeto es nulo');
  } else {
    print('El objeto no es nulo');
  }
}
