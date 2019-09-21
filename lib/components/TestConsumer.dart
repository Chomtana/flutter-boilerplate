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
                  print("pressed "+records.test);
                  records.settTest("hello mue r ai mueng ja tum took");
                  print("after "+records.test);
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