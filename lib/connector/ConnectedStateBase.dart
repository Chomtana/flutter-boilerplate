import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async';

abstract class ConnectedStateBaseInterface<P> extends ChangeNotifier {
  final pureid = Random();
  var useAsyncNotify = true;
  P parent;
  List<ConnectedStateBaseInterface> children;
  
  void notify();
  void commit();
  void commitDelete();
  void delete();
  String get tableName;
  String get collectionName => tableName;
  
}

abstract class ConnectedStateBase<P extends ConnectedStateBaseInterface> extends ConnectedStateBaseInterface<P> {
  initConnection(P parent) {
    this.parent = parent;
    this.parent.children.add(this);
  }
  
  @override
  String get tableName {
    ConnectedStateBaseInterface curr = this;
    while(curr.parent != null) {
      curr = curr.parent;
    }
    
    return curr.tableName;
  }
  
  @override
  void notify() {
    notifyListeners();
    if (parent != null) parent.notify();
  }
  
  void delete() {
    this.parent.children.asMap().forEach((index, value) {
      if (value.pureid == this.pureid) {
        this.parent.children.removeAt(index);
      }
    });
    this.notify();
  }
}
