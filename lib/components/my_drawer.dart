import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: Image.asset(
                'images/logo.png',
                color: Colors.grey.shade900,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
            ),
            Spacer(),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text('Logout'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
