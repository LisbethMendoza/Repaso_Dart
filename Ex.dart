import 'dart:io';

//Ejercicio 1: Clases y Objetos
//Define una clase Persona con atributos, nombre y edad. Crea una instancia de esta clase e imprime sus valores.
//Agrega un método para mostrar los detalles de la persona.

void main() {
  print('--Ejercicio 1--');
  ex1();
  print('');
  print('--Ejercicio 2--');
  ex2();
  print('');
  print('--Ejercicio 3--');
  ex3();
  print('');
  print('--Ejercicio 4--');
  //ex4();
  print('');
  print('--Ejercicio 5--');
  ex5();
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
//Extensiones y Enumeraciones
//Crea una enumeración DiaSemana con los días de la semana.
//Define una extensión sobre int que devuelva true si el número es par. Úsalo para verificar si un número ingresado por el usuario es par.

enum DiaSemana {
  MONDAY,
  TUESDAY,
  WEDNESDAY,
  TRUSDAY,
  FRIDAY,
  SATURDAY,
  SUNDAY,
}

extension operacion on int {
  bool esPar() {
    return this % 2 == 0;
  }
}

void ex4() {
  print('Ingrese un número entero del 1 al 7:');
  String? input = stdin.readLineSync();

  if (input != null) {
    int? numero = int.tryParse(input);

    if (numero != null && numero >= 1 && numero <= 7) {
      if (numero.esPar()) {
        print('El número $numero es par.');
      } else {
        print('El número $numero es impar.');
      }

      // Obtenemos el día correspondiente de la enumeración
      DiaSemana dia = DiaSemana.values[numero - 1];
      print('El día correspondiente es: ${dia.toString().split('.').last}');
    } else {
      print('Por favor, ingrese un número válido del 1 al 7.');
    }
  }
}

//-------------Ejercicio 5-------------------
//Crea un mixin Nadador con un método nadar(). Agrégalo a una clase Delfín que herede de la clase abstracta Animal.
//Define un Factory constructor en una clase Vehículo que devuelva una instancia de diferentes tipos de vehículos dependiendo del tipo ingresado (e.g., "auto", "moto").

abstract class Vehiculo {
  void encender();

  factory Vehiculo(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      throw 'Tipo de vehículo no reconocido: $tipo';
    }
  }
}

class Auto implements Vehiculo {
  @override
  void encender() {
    print("El auto está encendido.");
  }
}

class Moto implements Vehiculo {
  @override
  void encender() {
    print("La moto está encendida.");
  }
}

void ex5() {
  Vehiculo vehiculo1 = Vehiculo('auto');
  vehiculo1.encender();

  Vehiculo vehiculo2 = Vehiculo('moto');
  vehiculo2.encender();

  try {
    Vehiculo vehiculo3 = Vehiculo('camion');
    vehiculo3.encender();
  } catch (e) {
    print(e);
  }
}
