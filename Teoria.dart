//Dart: Es un lenguaje de programacion que esta orientado a objeto y optimizado para crear frontend.
//N= Name
void main() {
  print('--------------------Class---------------------------');
  //How you put a value and call a class
// Nclass   Nobje      Nclass     VALUE
  personaa elobjeto = personaa("Juan", 14, 30);
  elobjeto.Metodo();

//----------------------Talk about a lot of contructores--------------------
  Gente persona2 = Gente.soloNombre('Maria', 0);
  Gente persona3 = Gente.sinNombre('', 0);

  print('${persona2.nombre}, ${persona2.edad}');
  print('${persona3.nombre}, ${persona3.edad}');

  print('----------------------Herencia-------------------------');
//Nclas  Nobje     Nclass
  Perro obperro = Perro();
//Nthatclass . Call what i want
  obperro.hacerSonido();

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

class Gente {
  String nombre;
  int edad;

  // Constructor principal
  Gente(this.nombre, this.edad);

  // Call only the name
  Gente.soloNombre(this.nombre, this.edad) {
    edad = 0;
  }

  Gente.sinNombre(this.nombre, this.edad) {
    nombre = '';
    edad = 0;
  }
}

//............................Herencia.............................................

class animal {
  void hacerSonido() {
    print("El animal hace un sonido.");
  }
}

class Perro extends animal {
  @override
  void hacerSonido() {
    print("El gato ladra.");
  }
}



class colores {
  void cambiacolor() {
    print('esto debe cambiar de color');
  }
}

class color extends colores {
  @override
  void cambiacolor() {
    print('este color es rojo');
  }
}

//...........................................assert.........................................................//
//It is mainly used to check that certain conditions are true.
void asssert() {
  int edad = -5;
  //the age doesn't be negative
  assert(edad >= 0, 'La edad no puede ser negativa');

  print('La edad es $edad');
}

//class abstract: when you want to put other accion to a exitend class
abstract class Colores {
  void cambiaColor();

  void desaparece() {
    print("El color desaparece");
  }
}
