import 'package:flutter/material.dart';
import 'package:proyecto_e1_app/widgets/navbar.dart';
import 'package:proyecto_e1_app/widgets/sidebar.dart';

class CreateEventScreen extends StatelessWidget {
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
                  'CREATE EVENT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  'assets/images/undraw_Online_organizer_re_156n.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Event Name',
                    hintText: 'My Event',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'Event Type',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(child: Text("Tournament"), value: "Tournament"),
                    DropdownMenuItem(child: Text("Party"), value: "Party"),
                    DropdownMenuItem(child: Text("Workshop"), value: "Workshop"), // Ejemplo de 3ra opción
                  ],
                  onChanged: (value) {},
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.map),
                        label: Text("Location"),
                        onPressed: () {
                          // Integración con el mapa
                        },
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: Icon(Icons.calendar_today),
                        label: Text("Date"),
                        onPressed: () async {
                          DateTime? selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );

                          if (selectedDate != null && selectedDate != DateTime.now()) {
                            // manejo futuro de la fecha seleccionada
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextField(
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: 'Event Description',
                    hintText: 'This Event...',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/eventDetails');
                  },
                  child: Text('Create'),
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
