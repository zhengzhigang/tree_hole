import 'package:flutter/material.dart';
import 'package:boss/app/item/msglist_item.dart';
import 'package:boss/app/model/message.dart';

class MessageTab extends StatefulWidget {
  @override
  _MessageTabState createState() => _MessageTabState();
}

class _MessageTabState extends State<MessageTab> {
  List<Message> _msgs = [];

  @override
  void initState() {
    super.initState();
    getMsgList();
  }

  void getMsgList () {
    setState(() {
      _msgs = Message.fromJson('''
        {
          "list": [
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/10/05/1937/ff66f30613e4-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2018/05/15/1546/d1626a231f46-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/diary/2017/11/14/fe6429792c-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2019/04/10/1600/2d4055d6a9b4-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/31/0952/550a7d5c1f86-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2018/12/09/1703/64ae032dd1bc-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2019/02/14/1536/1c74db00c02a-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2018/07/18/1647/48f2d82e3f71-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2019/02/12/1428/4e743afb3191-thumb",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            },
            {
              "name": "马云",
              "avatar": "https://pic.igengmei.com/2017/05/03/1540/bd7a9160cfb8-half",
              "company": "阿里巴巴",
              "position": "董事主席",
              "msg": "欢迎来到阿里巴巴任职"
            }
          ]
        }
      ''');
    });
  }

  Widget buildMsgItem(BuildContext context, int index) {
    Message msg = _msgs[index];

    var msgItem = InkWell(
      onTap: () {
        showDialog(context: context, child: AlertDialog(
          title: Text('提示'),
          content: Text('功能紧急开发中,敬请期待!', style: TextStyle(fontSize: 20.0)),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('确定'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        ));
      },
      child: MessageListItem(msg),
    );
    return msgItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
      ),
      body: ListView.builder(itemCount: _msgs.length, itemBuilder: buildMsgItem)
    );
  }
}