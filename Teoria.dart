//Dart: Es un lenguaje de programacion que esta orientado a objeto y optimizado para crear frontend.

void main() {
  //How you put a value and call a class
  
  personaa elobjeto = personaa("Juan", 14, 30);
  elobjeto.Metodo();
}

//Definicon de una clase:
class persona {
  String nombre = 'lisbeth';
  int age = 3;
}

//THIS is used for put value to your dates.
class personaa {
  String nombre;
  int age;
  int actual;

  personaa(this.nombre, this.age,
      this.actual); //Is necessary this have all do you have in yoir class.

//Metodo: is use for defined how it behaves a class
  void Metodo() {
    print(
        'hi, my name is $nombre and when i was young i was $age, but now i am $actual');
  }
}
