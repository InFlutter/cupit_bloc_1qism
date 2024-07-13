import 'package:cupit/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cupit/counter_cupit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context){
          return Cupitthememode();
        }),
      ],
      child: BlocBuilder<Cupitthememode,bool>(
        builder: (context,istrue) {
          return MaterialApp(
            theme: istrue ? ThemeData.dark() : ThemeData.light(),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}