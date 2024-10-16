import 'package:flutter/material.dart';
import 'package:form_validade/resources/strings.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    MaskTextInputFormatter maskBrazilianCpf = MaskTextInputFormatter(mask: '###.###.###-##');
    MaskTextInputFormatter maskDateTime = MaskTextInputFormatter(mask: '##/##/####');
    MaskTextInputFormatter maskBrazilianPhone = MaskTextInputFormatter(mask: '(##)#####-####');

    RegExp regexEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    RegExp regexPassword = RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$');
    RegExp regexDateTime = RegExp(r'^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/[12][0-9]{3}$');
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.register),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: const InputDecoration(
                    hintText: Strings.hintName,
                    label: Text(Strings.hintName),
                  ),
                  inputFormatters: [maskDateTime],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nome não pode ser vazio';
                    }
                    if (!regexDateTime.hasMatch(value)) {
                      return 'Invalid date';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {
                      formKey.currentState!.validate();
                    },
                    child: const Text(
                      Strings.buttonContinue,
                      style: TextStyle(color: Colors.black),
                    ),
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
