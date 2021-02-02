import 'package:flutterreduxsample/state/route_state.dart';

import 'counter_reducer.dart';

RouteState routReducer(RouteState state, action) {
  return RouteState(
      count : counterReducer(state.count, action)
  );
}
