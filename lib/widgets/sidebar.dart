import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.create),
            title: Text('Create Event'),
            onTap: () {
              Navigator.of(context).pushNamed('/createEvent');
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Find Event'),
            onTap: () {
              Navigator.of(context).pushNamed('/findEvent');
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Toggle Theme'),
            onTap: () {
              // Logic to toggle theme
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('Login'),
            onTap: () {
              Navigator.of(context).pushNamed('/login');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
        ],
      ),
    );
  }
}

