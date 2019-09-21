import 'package:flutter/cupertino.dart';

class RecordsState extends ChangeNotifier {
  String test = "Dsadsadsaddas";
  
  Widget buildTest(BuildContext context) {
    return Container(
      child: Text(test)
    );
  }
  
  settTest(msg) {
    print("Setted "+msg);
    test = msg;
    notifyListeners();
  }
}