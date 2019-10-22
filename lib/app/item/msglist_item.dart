import 'package:flutter/material.dart';
import 'package:boss/app/model/message.dart';

class MessageListItem extends StatelessWidget {
  final Message msg;
  MessageListItem(this.msg);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Card(
          elevation: 0.0,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage(
                    msg.avatar
                  )
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(msg.name),
                    ),
                    Container(
                      child: Text('${msg.company}|${msg.position}'),
                    ),
                    Container(
                      child: Text(msg.msg),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}