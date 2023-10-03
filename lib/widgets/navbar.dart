import 'package:flutter/material.dart';

class Navbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'E-VENTe',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: InkWell(
        onTap: () => Scaffold.of(context).openDrawer(),
        child: Icon(Icons.menu),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}


