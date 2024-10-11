import 'package:flutter/material.dart';
import 'package:form_validade/resources/strings.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.register),
      ),
    );
  }
}