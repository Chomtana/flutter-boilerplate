import 'package:flutter/material.dart';
import 'package:plannee_flutter/objects/ChatMessageObj.dart';

class ChatMessage extends StatefulWidget {
  ChatMessage({this.msg});
  final ChatMessageObj msg;

  @override
  _ChatMessageState createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  List<Widget> body(BuildContext context) {
    var res = <Widget>[
      Icon(Icons.sentiment_very_satisfied),
      Expanded(
          child: Container(
              decoration: BoxDecoration(color: Colors.green[100], borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(12),
              child: Text(
                  'Flutter\'s hot reload helps you quickly and easily experiment, build UIs, add features, and fix bug faster. Experience sub-second reload times, without losing state, on emulators, simulators, and hardware for iOS and Android.')))
    ];

    return res.reversed.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.65),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: body(context),
      ),
    );
  }
}
