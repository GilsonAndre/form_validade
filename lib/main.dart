import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validade/bloc/register_bloc.dart';
import 'package:form_validade/register_page.dart';
import 'package:form_validade/resources/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeApp themeApp = ThemeApp();
    return BlocProvider(
      create: (context) => RegisterBloc(),
      child: MaterialApp(
        theme: themeApp.themeLight,
        home: RegisterPage(),
      ),
    );
  }
}
