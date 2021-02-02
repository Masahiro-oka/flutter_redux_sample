import 'package:flutterreduxsample/action/action_increment.dart';

class CountState{
//  constを書き込まないと、呼び出しがわでクラスのインスタンス化ができない。これって定数コンストラクタ…かな？
  const CountState({this.count = 0});
  final int count;

}