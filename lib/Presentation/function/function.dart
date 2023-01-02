import 'package:flutter/material.dart';

class FunctionPage extends StatelessWidget {
  const FunctionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter your Username',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Enter your Password',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: (() => print('Login')),
            child: const SizedBox(
              width: 100,
              height: 50,
              child: Center(
                child: Text('Login'),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
