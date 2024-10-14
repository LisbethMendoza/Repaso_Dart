//Ejercicio 1: Clases y Objetos
//Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
//Agrega un método para mostrar los detalles de la persona.

void main() {
  print('--Ejercicio 1--');
  ex1();

  print('--Ejercicio 2--');
  ex2();

  print('--Ejercicio 2--');
  ex3();
}

//-------------Ejercicio 1-------------------
class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void metodo() {
    print('Hola mi nombre es $nombre y actualmente tengo $edad');
  }
}

void ex1() {
  Persona obp = Persona('Lisbeth', 20);
  obp.metodo();
}

//-------------Ejercicio 2-------------------
//Constructores nombrados y @override
//Crea una clase Empleado que herede de Persona. Agrega un constructor nombrado que incluya nombre,
//edad y un nuevo atributo, cargo. Sobrescribe el método de mostrar detalles para incluir el cargo del empleado.

class Empleado extends Persona {
  @override
  Empleado(String nombre, int edad, this.cargo) : super(nombre, edad);

  String cargo;

  void metodo() {
    print(
        'Hola mi nombre es $nombre y actualmente tengo $edad y mi cargo es $cargo');
  }
}

void ex2() {
  Empleado obp = Empleado('Lisbeth', 20, 'Estudiante');
  obp.metodo();
}

//-------------Ejercicio 3-------------------
//Aserciones y Clases Abstractas
//Define una clase abstracta Animal con un método comer(). Crea una subclase Perro que implemente este método.
//Agrega una aserción en el constructor de Perro para asegurarte de que la edad del perro sea mayor que 0.

abstract class Animal {
  void comer();
}

class Perro extends Animal {
  String nombre;
  int edad;
  Perro(this.nombre, this.edad)
      : assert(edad > 0, 'La edad no puede ser negativa');
  @override
  void comer() {
    print("Estoy comiendo!!!");
  }
}

void ex3() {
  Perro perro = Perro('Rex', 5);
  perro.comer();
  print('Hola mi nombre es ${perro.nombre} y tengo ${perro.edad} !!!!!!');
}

//-------------Ejercicio 4-------------------

//-------------Ejercicio 5-------------------
