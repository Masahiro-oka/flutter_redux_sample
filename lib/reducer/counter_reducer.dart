import 'package:flutterreduxsample/action/action_increment.dart';
import 'package:flutterreduxsample/state/count_state.dart';

CountState counterReducer(CountState state, action) {
  if (action is IncrementAction) {
    print('足されている');
    return CountState(count: state.count + action.count);
  } else {
    return state;
  }
}
