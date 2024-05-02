import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_booking/cubit/app_cubit_logics.dart';
import 'package:travel_booking/cubit/app_cubits.dart';
import 'package:travel_booking/services/data_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<AppCubits>(
        create: (context)=> AppCubits(
          data: DataServices()
        ),
        child: AppCubitLogics(),
      ),
    );
  }
}
