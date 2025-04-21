import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        // Drawer padding
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),

        // Drawer content
        child: Column(
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Image.asset(
                'images/logo.png',
                color: Colors.grey.shade900,
              ),
            ),

            // Home
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              tileColor: Colors.transparent,
            ),

            // About
            const ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              tileColor: Colors.transparent,
            ),

            // Spacer to push the logout button to the bottom
            const Spacer(),

            // Logout
            const ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Logout'),
              tileColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
