# bloc_abstraction

Simple abstraction for Flutter's BloC pattern implementation

## Create BloC

Create a BloC extending BlocBase

``` dart
class CounterBloc extends BlocBase {
  @override
  void dispose() {
    // TODO: implement dispose
  }
}
```
Use `dispose()` method to close your streams and cancel your `StreamSubscription`

## Using BlocProvider

Create a BlocProvider like this by passing bloc and widget

``` dart
class HomeView extends StatelessWidget {
  final bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Title"),
        ),
        body: Info(),
      ),
    );
  }
}
```

That will grant you to get bloc inside the widget tree anywhere

``` dart
class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.bloc<CounterBloc>(context);
```