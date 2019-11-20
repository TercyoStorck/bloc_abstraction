import 'package:flutter/widgets.dart';

import 'bloc_base.dart';

class BlocProvider extends StatefulWidget {
  final Widget _child;
  final BlocBase _bloc;

  BlocProvider({
    @required Widget child,
    @required BlocBase bloc,
  })  : _child = child,
        _bloc = bloc;

  @override
  _BlocProviderState createState() => _BlocProviderState();

  static T bloc<T extends BlocBase>(BuildContext context) =>
      _InheritedBloc.of(context).bloc;
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) {
    return _InheritedBloc(
      bloc: widget._bloc,
      child: widget._child,
    );
  }

  @override
  void dispose() {
    widget._bloc.dispose();
    super.dispose();
  }
}

class _InheritedBloc extends InheritedWidget {
  final BlocBase _bloc;
  final Widget _child;

  _InheritedBloc({
    Key key,
    @required BlocBase bloc,
    @required Widget child,
  })  : _bloc = bloc,
        _child = child,
        super(key: key, child: child);

  static _InheritedBloc of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(_InheritedBloc) as _InheritedBloc;

  BlocBase get bloc => _bloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}