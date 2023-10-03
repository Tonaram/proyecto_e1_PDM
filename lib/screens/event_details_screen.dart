import 'package:flutter/material.dart';
import 'package:proyecto_e1_app/widgets/navbar.dart';
import 'package:proyecto_e1_app/widgets/sidebar.dart';

class EventDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Navbar(),
      drawer: Sidebar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 400,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'EVENT 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/undraw_Gaming_re_cma2.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Lorem venenatis sit eros iaculis risus sit sed. Tempor morbi velit luctus ut orci sit condimentum pharetra vitae. Elementum pellentesque proin tincidunt tortor cursus duis donec et elit. Vitae tempus consequat non vel sed vitae sed...',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Icon(Icons.map, color: Colors.blue), // Placeholder para el mapa
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Fecha: 29 de Febrero, 2024', // a futuro dinamizar en función a la fecha real del evento
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Por ahora no hace nada
                  },
                  child: Text('Join'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}