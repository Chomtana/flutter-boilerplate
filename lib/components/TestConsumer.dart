import 'package:flutter/material.dart';
import 'package:plannee_flutter/states/RecordsState.dart';
import 'package:provider/provider.dart';

class TestConsumer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<RecordsState>(
      builder: (context, records, child) {
        return Container(
          child: Column(
            children: [
              Text(records.test),
              RaisedButton(
                onPressed: () {
                  Provider.of<RecordsState>(context, listen: false).setTest("hello fuck");
                },
                child: Text("Set to hello world"),
              )
            ]
          )
        );
      },
    );
  }
}