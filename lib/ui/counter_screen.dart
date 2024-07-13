import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cupit/counter_cupit.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<Cupitthememode>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SwitchListTile(
        title: Text('Rejimni tanlang'),
        value: themeCubit.state,
        onChanged: (bool value) {
          themeCubit.toggleTheme();
        },
      ),
    );
  }
}