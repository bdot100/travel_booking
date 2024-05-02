import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_booking/cubit/app_cubit_state.dart';
import 'package:travel_booking/cubit/app_cubits.dart';
import 'package:travel_booking/pages/detail_page.dart';
import 'package:travel_booking/pages/nav_pages/main_page.dart';
import 'package:travel_booking/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if(state is WelcomeState){
            return WelcomePage();
          }
          if(state is LoadedState){
            return MainPage();
          }
          if(state is DetailState){
            return DetailPage();
          }
          if(state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }
          else{
            return Center(child: Container(
              child: Text("Error Loading Data!"),
            ));
          }
        },
      ),
    );
  }
}