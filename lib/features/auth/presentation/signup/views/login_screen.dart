import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                // Handle username input
              },
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              onChanged: (value) {
                // Handle password input
              },
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle login button press
                // Perform authentication or redirect to the main app
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
