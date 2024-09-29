import 'package:flutter/material.dart';

class InstMassangerScreen extends StatefulWidget {
  const InstMassangerScreen({super.key});

  @override
  State<InstMassangerScreen> createState() => _InstMassangerScreenState();
}

class _InstMassangerScreenState extends State<InstMassangerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('No massage hare'),
      ),
    );
  }
}
