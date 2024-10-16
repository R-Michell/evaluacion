import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(200.0), 
          child: AppBar(
            backgroundColor: Colors.white, // fondo
            flexibleSpace: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0), 
                        child: Image.asset(
                          'assets/logo_upds.png',
                          height: 100, 
                          fit: BoxFit.contain, 
                        ),
                      ),
                      Expanded( 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, 
                          children: [
                            Text(
                              'Nacional',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20, 
                                fontWeight: FontWeight.bold, 
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Santa Cruz',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Tarija',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Potosí',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Cochabamba',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'La Paz',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Trinidad',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Sucre',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Oruro',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'Cobija',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 94, 170, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // imagen en la derecha
                      Padding(
                        padding: const EdgeInsets.only(left: 50.0), 
                        child: Image.asset(
                          'assets/logotipo.png',
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  color: Colors.blue[800], 
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildDropdown('UPDS NACIONAL', [
                          'Nuestra Historia',
                          'Misión y Visión',
                          'Directorio',
                          'Mensaje del Rector Nacional',
                          'Talento Humano',
                          'Modelo Educativo por Competencias',
                          'Normativa y Reglamentos'
                        ]),
                        _buildDropdown('FACULTADES', [
                          'Ciencias Jurídicas',
                          'Ciencias Empresariales',
                          'Ciencias Sociales',
                          'Ingeniería',
                          'Ciencias de la Salud',
                          'Carreras Semipresenciales',
                          'Bienestar Estudiantil',
                          'Modalidades de Estudio'
                        ]),
                        _buildDropdown('ADMISIONES', [
                          'Admisiones',
                          'Requisitos de Inscripción'
                        ]),
                        _buildDropdown('EXTENSIÓN UNIVERSITARIA', [
                          'Galería',
                          'Actividades',
                          'Noticias',
                          'Social',
                          'Tutoriales'
                        ]),
                        _buildDropdown('INTERNACIONALIZACIÓN', [
                          'Modalidad Estudiantil',
                          'Membresías',
                          'Convenios entre Universidades'
                        ]),
                        _buildDropdown('INVESTIGACIÓN', ['']),
                        _buildDropdown('DOCENCIA', ['']),
                        _buildDropdown('POSTGRADO', ['']),
                        _buildDropdown('CONTACTO', [
                          'Santa Cruz',
                          'Tarija',
                          'Potosí',
                          'Cochabamba',
                          'La Paz',
                          'Trinidad',
                          'Sucre',
                          'Oruro',
                          'Cobija'
                        ]),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: _buildImageCarousel()), // carrusel
            _buildIconRow(), // fila de iconos añadida
            Center(child: Text('Contenido de la página')),
          ],
        ),
      ),
    );
  }

  // menus desplegables
  Widget _buildDropdown(String title, List<String> options) {
    return DropdownButton<String>(
      icon: Icon(
        Icons.arrow_drop_down,
        color: Colors.white, // Color de la flecha del menú
      ),
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: (value) {
        print('Seleccionaste: $value');
      },
    );
  }

  // Función para construir el carrusel de imágenes
  Widget _buildImageCarousel() {
    List<String> assets = [
      'assets/carrusel1.jpg', 
      'assets/carrusel2.jpg', 
      'assets/carrusel3.jpg', 
    ];

    return Swiper(
  itemCount: 3, // Número de imágenes
  itemBuilder: (BuildContext context, int index) {
    return Image.asset(
      'assets/carrusel${index + 1}.jpg', // Rutas correctas para las imágenes
      fit: BoxFit.cover, // Ajusta la imagen al tamaño del contenedor
    );
  },
  pagination: SwiperPagination(), // Indicadores del carrusel
  control: SwiperControl(), // Botones de control
);
  }

  // Fila de iconos añadida
  Widget _buildIconRow() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildIconWithLabel(Icons.map, 'MAPAS'),
          _buildIconWithLabel(Icons.person, 'SOCIAL'),
          _buildIconWithLabel(Icons.tour, 'TOUR VIRTUAL'),
          _buildIconWithLabel(Icons.school, 'PORTAL UPDS'),
          _buildIconWithLabel(Icons.menu_book, 'BIBLIOTECA'),
          _buildIconWithLabel(Icons.apps, 'OFFICE 365'),
        ],
      ),
    );
  }
  // construir cada icono 
  Widget _buildIconWithLabel(IconData iconData, String label) {
    return Column(
      children: [
        Icon(iconData, size: 40, color: Colors.grey[600]),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue[900],
          ),
        ),
      ],
    );
  }

//informacion


}
