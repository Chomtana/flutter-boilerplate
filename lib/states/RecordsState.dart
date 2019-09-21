import 'package:flutter/cupertino.dart';
import 'package:plannee_flutter/connector/ConnectedStateBase.dart';
import 'package:plannee_flutter/connector/ConnectedStateRoot.dart';

class RecordsState extends ChangeNotifier {
  String get tableName => "records";
  
  String test = "Dsadsadsaddas";
  
  Widget buildTest(BuildContext context) {
    return Container(
      child: Text(test)
    );
  }
  
  setTest(msg) {
    test = msg;
    print("Setted "+msg);
    notifyListeners();
  }
}