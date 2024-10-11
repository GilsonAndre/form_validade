import 'package:flutter/material.dart';
import 'package:form_validade/resources/strings.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.register),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  autocorrect: true,
                  decoration: const InputDecoration(
                    hintText: Strings.hintName,
                    label: Text(Strings.hintName),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: OutlinedButton(
                    style: const ButtonStyle(
                      
                      textStyle: WidgetStatePropertyAll<TextStyle>(
                        TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Valid');
                      } else {
                        print('Invalid');
                      }
                    },
                    child: const Text(Strings.buttonContinue, style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
