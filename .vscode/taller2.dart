class Libro {
  // Propiedades de la clase
  String titulo;
  String autor;
  double precio;
  int cantidadStock;

  // Constructor de la clase
  Libro(
      {required this.titulo,
      required this.autor,
      required this.precio,
      required this.cantidadStock});

  // Método para comprar libros
  void comprar(int cantidadComprar) {
    if (cantidadStock >= cantidadComprar) {
      cantidadStock -= cantidadComprar; // Disminuye el stock
      print(
          'Compra realizada con éxito. Se han comprado $cantidadComprar copias de "$titulo".');
    } else {
      print(
          'No hay suficiente stock para realizar la compra. Stock disponible: $cantidadStock.');
    }
  }

  // Método para mostrar la información del libro
  void mostrarInformacion() {
    print('Información del libro:');
    print('Título: $titulo');
    print('Autor: $autor');
    print('Precio: \$${precio.toStringAsFixed(2)}');
    print('Cantidad en stock: $cantidadStock');
  }
}

void main() {
  // Creación de un objeto Libro
  Libro miLibro = Libro(
      titulo: 'Cien años de soledad',
      autor: 'Gabriel García Márquez',
      precio: 20.00,
      cantidadStock: 50);

  // Mostrar la información del libro
  miLibro.mostrarInformacion();

  // Intento de compra
  miLibro.comprar(3);

  // Mostrar la información del libro después de la compra
  miLibro.mostrarInformacion();

  // Intento de compra que excede el stock disponible
  miLibro.comprar(25);
}
