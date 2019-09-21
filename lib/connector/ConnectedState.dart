import 'package:flutter/material.dart';
import 'package:plannee_flutter/connector/ConnectedStateBase.dart';
import 'package:plannee_flutter/connector/firebaseConnector.dart';

abstract class ConnectedState<P extends ConnectedStateBaseInterface> extends FirebaseConnectedState<P> {}
