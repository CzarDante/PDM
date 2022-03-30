import 'package:flutter/widgets.dart';
import 'button.dart';

class buttonRow extends StatelessWidget {
  final List<button> buttons;
  buttonRow(this.buttons);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, b) {
          list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1.5), b]);
          return list;
        }),
      ),
    );
  }
}
