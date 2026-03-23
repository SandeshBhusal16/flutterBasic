import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'todo_screen.dart';

class HomeScreen extends StatelessWidget {
  // ADDED:
  // This allows LoginScreen to send the logged-in email.
  final String email;

  const HomeScreen({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome: $email',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            const Text(
              'Here you can explore more features of the app',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
              child: const Text("Counter"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TodoScreen()),
                );
              },
              child: const Text('Todo'),
            ),
          ],
        ),
      ),
    );
  }
}
