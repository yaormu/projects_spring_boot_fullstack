# Excepciones

## Qúe son las excepciones?

No son errores, son caminos alternos al flujo normal de una aplicación, esta se puede componer de muchas cosas y puede llegar a tener un proceso muy complejo detrás.

Por ejemplo una aplicación encargada de sumar números, ocurriria una excepción en dicha aplicación, si ingresamos valores como letras.

Estos hace parte de un sin número de casos que no son contemplados dentro del flujo normal de la aplicación y como programadores debemos tratar de controlar todos estos flujos alternos.

### Ejemplo

Tenemos una aplicación cuyo registro es solo para personas mayores de 18 años, por lo cual debemos cesionarnos que nadie tenga una fecha de nacimiento, que al calcular sea menor a 18 años,
si eso sucede probablemente tendremos que mostrar una excepción en la aplicación.

Despues de esto podemos tener un archivo de log o registrar un archivo de logs, que sucede en la aplicación.
Podemos guardar información en un archivo de log, podemos guardar datos en una tabla, incluso enviar notificaciones a los administradores de un sistema, hacer algo mas complejo como enviar
notificaciones por email, notificaciones push, avisar a diferentes medios por mensaje de texto.
Guardar el log, registrarlo en un base de datos, todo es puede involucrar el manejo de excepciones, porque tenemos que alertar en muchos casos a los interesados que ocurrio que tal vez
merezca esta alerta.
Todo depende del flujo o logica de negocio con la que nosotros estemos construyendo una determinada aplicación.

## Jerarquía de las excepciones

Todos los objetos en Java, directa o indirectamente extienden de la clase Object.

La clase padre de todas las excepciones **Throwable** y que extiende de la clase `Object`.

```
public class Throwable implements Serializable {}
```

De esta tienen dos hijos muy caracteristicos la clase **Error** y la clase **Exception**

### Error

```
public class Error extends Throwable {}
```

Errores grabes del funcionamiento de Java, más no necesariamente de la aplicación. No se pueden cachear, como por ejemplo un error grave en el servidor, o que se acabo la memoria.

### Exception

```
public class Exception extends Throwable {}
```

Exception, extienden de la gran mayoria, tiene la particularidad que nos permite hacer Catch, y es la cual podemos heredar para crear nuestras propias excepciones, siempre y cuando cuyo Catch sea obligatorio al momento de programar.

### RuntimeException

```
public class RuntimeException extends Exception {}
```

RutimeException es el padre de todas las UNCHECKED EXCEPTIONS

#### CHECKED EXCEPTIONS

Son excepciones que necesitamos atrapar en algún momento

```
public static void main(String[] args) {
	new FileInputStream(new File("."));
}
```

No solicita que sea atrapada:

```
try {
	new FileInputStream(new File("."));
} catch (FileNotFoundException e) {

}

```

En este caso es atrapado por Java:

```
public static void main(String[] args) throws FileNotFoundException {
	new FileInputStream(new File("."));
}
```

#### UNCHECKED EXCEPTIONS

No son necesario que se atrapen, la más famosa es la null pointer exception

```
public static void main(String[] args) {
	String nombre = null;
	nombre.toString();
}
```

Si nosotros vamos a crear una excepción, que no necesita ser controlada por la aplicación, se va a extender normalmente a RuntimeException, no deberiamos extender de el, a no ser de un caso muy especifico. Debemos es extender de Exception, porque esas son las excepciones que nosotros necesitamos controlar en nuestra aplicación, por ejemplo cuando se valida de una cedula sea vigente, osea si realizas una consulta a BD y te dice esta cedula ya no esta vigente, como programador tenemos que controlar dicha excepción.

Entonces la forma de controlar u/o obligar o sercioramos que el código haya controlado dicha excepción, pues extendiendo de Exception.

## Excepciones personalizadas ¿Qué son? ¿Cuál es su objetivo?

Clase que extiende de `Exception` ya que las clases personalizadas deberia extender de CHECKED EXCEPTIONS y no de UNCHECKED EXCEPTIONS.

Al extender de `Exception` nosotro podemos nutrir de información esta clase, agregando atributos adicionales, así obtiendo más información en los logs que puede generar la aplicación.

El objetivo principal de las excepciones personalizadas particularmente es proveer información como desarrollador. Este hecho lo convierte en buena prática, sobre todo si estamos trabajando en aplicaciones grandes y complejas.

Hay excepciones personalizadas que se agrega un mensaje de lectura al usuario, ejemplo ocurrio error al consultar los contratos del usuario, pero al momento de entrega información usuario final, se entrega mucha más información, como para el usuario x no se encuentra contrato vigente.

Si usaramos `Exception` directamente no podriamos agregar atributos adicionales, no poder nutrir de información el log, no podriamos identificar de forma fácil, cuales excepciones parte de nuestro código y cuales no.

## 5 Tips para un correcto manejo de excepciones

1. Cuidado con el **log**
   Tener cuidado con lo que se escribe en el log, a veces pueden ir querys, logeo de parametros, contraseñas e información de usuarios como número, correos, etc.

2. No dejes **catch** vacíos
   Por ejemplo al dejar vacío y llegue a fallar este código, no habria manera saber lo que sucedio, no recomendable poner logica a los **catch**

```
public static void main(String[] args) {
	try {
	    System.out.println("Hola");
	} catch (Excepciones e) {

	}
}
```

3. No hagas **log** y **rethrow**
   No realizar un log para luego hacer un rethrow de un excepción, como en el siguiente ejemplo:

```
public static void main(String[] args) {
	try {
	    System.out.println("Hola");
	} catch (Excepciones e) {
	    System.out.println("Ocurrio un error");
	    throws e;
	}
}
```

Ya que puede crear duplicidades en el código, generar archivos log inentendibles.

4. No utilices Excepciones Genéricas
   No usar excepciones genericas en la definición de los métodos

```
public static void main(String[] args) throws Exception {

}
```

Dicha excepcion cubre muchos errores. En cambio en el siguiente método ya sabemos que hay control de archivos y tambien acceso a datos:

```
public void crearPersona()) throws FileNotFoundException, DataAccessException {

}
```

5. Manejo de recursos
   En Java hay unas clases especiales conocidas como Resources, como el siguiente ejemplo es la forma adecuada:

```
public static void main(String[] args) throws Exception {
	try (FileInputStream a = new FileInputStream(new File("test.java"))) {
	    // e.close(); // No es una forma adecuada
	} catch (Excepciones e) {

	} finally {

	}
}
```
