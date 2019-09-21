import 'dart:math';

import 'package:plannee_flutter/connector/ConnectedStateBase.dart';

class _Dummy {
  
}

class ConnectedStateRoot extends ConnectedStateBaseInterface<_Dummy> {
  final pureid = Random();
  var useAsyncNotify = true;
  _Dummy parent;
  List<ConnectedStateBaseInterface> children;
  
  void notify() {}
  void commit() {}
  void commitDelete() {}
  void delete() {}
  String get tableName => "PleaseEnterTableName";
  String get collectionName => tableName;
  
}