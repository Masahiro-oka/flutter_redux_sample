import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterreduxsample/action/action_increment.dart';
import 'package:flutterreduxsample/state/route_state.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
            child: StoreConnector<RouteState , int>(
              distinct: true,
              converter: (store) => store.state.count?.count,
              builder: (context, count) {
                return Text('$count',
                  style: Theme.of(context).textTheme.bodyText1,
                );
              },
            ),
          ),
          floatingActionButton: StoreConnector<RouteState, VoidCallback>(
            converter: (store) => () => store.dispatch(IncrementAction(1)),
            builder: (context, dispatchIncrement) {
              return FloatingActionButton(
                onPressed: dispatchIncrement,
                tooltip: 'Increment',
                child: Icon(Icons.add),
              );
            },
          ),
        );
      }
  }