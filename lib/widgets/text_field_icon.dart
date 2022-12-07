import 'package:flutter/material.dart';

class TextFieldIcon extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;

  const TextFieldIcon({super.key, required this.controller, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              icon: Icon(icon),
              hintText: 'ejemplo@dominio.com',
              labelText: 'Correo electronico')),
    );
  }
}
