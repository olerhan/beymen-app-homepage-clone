import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karusel_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:karusel_calismasi/ui/views/anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => Vitrin1ListeCubit()),
        BlocProvider(create: (context) => Vitrin1AktifIndeksCubit()),
        BlocProvider(create: (context) => Vitrin2ListeCubit()),
        BlocProvider(create: (context) => Vitrin2AktifIndeksCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Anasayfa(),
      ),
    );
  }
}