import 'package:flutter/material.dart';

class AlertDetailPage extends StatelessWidget {
  final String? id;

  const AlertDetailPage({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Detail Page"),
      ),
      body: Center(
        child: Text("Alert $id"),
      ),
    );
  }
}
