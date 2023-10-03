import 'package:flutter/material.dart';
import 'package:proyecto_e1_app/widgets/navbar.dart';
import 'package:proyecto_e1_app/widgets/sidebar.dart';

class ProfileScreen extends StatelessWidget {
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
                  'USERNAME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/saulg.jpg'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'My Events',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                ...List.generate(3, (index) => _buildEventCard(context, index)),
                SizedBox(height: 20),
                IconButton(
                  icon: Icon(Icons.settings, size: 30),
                  onPressed: () {
                    // Por ahora no hace nada
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEventCard(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.3),
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.event),
              onPressed: () {
                Navigator.of(context).pushNamed('/eventDetails');
              },
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Event ${index + 1}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(index == 2 ? 'Joined' : 'Created'),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.qr_code),
              onPressed: () {
                // Por ahora no hace nada
              },
            ),
          ],
        ),
      ),
    );
  }
}