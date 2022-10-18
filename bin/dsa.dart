import 'package:dsa/dsa.dart' as dsa;
import 'package:dsa/stack.dart';

void main() {
  final stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped:$element');
}
