import 'package:bloc_abstraction/bloc_abstraction.dart';
import 'package:example/presentation/view/hello/hello_view.dart';
import 'package:flutter/material.dart';
import '../../../bloc/counter_bloc.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.bloc<CounterBloc>(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have pushed the button this many times:',
          ),
          StreamBuilder(
            initialData: "0",
            stream: bloc.counterStream,
            builder: (context, snapshot) {
              return Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              );
            },
          ),
          RaisedButton(
            child: Text("Dispose Bloc"),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => HelloView(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
