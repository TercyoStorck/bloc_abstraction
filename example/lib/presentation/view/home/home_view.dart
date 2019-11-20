import 'package:flutter/material.dart';
import 'package:bloc_abstraction/bloc_abstraction.dart';
import 'widgets/info.dart';
import '../../bloc/counter_bloc.dart';

class HomeView extends StatelessWidget {
  final String title;
  final bloc = CounterBloc();

  HomeView({this.title});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Info(),
        floatingActionButton: FloatingActionButton(
          onPressed: bloc.addCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}