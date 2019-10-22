import 'package:flutter/material.dart';
import 'package:boss/app/components/icon_tab.dart';
import 'package:boss/app/view/jobs_view.dart';
import 'package:boss/app/view/message_view.dart';

class BossApp extends StatefulWidget {
  @override
  _BossAppState createState() => _BossAppState();
}

const double _kTabtextSize = 11.0;
const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;
Color _KPrimaryColor = Color.fromARGB(255, 0, 215, 198);


class _BossAppState extends State<BossApp> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          JobTab(),
          JobTab(),
          MessageTab(),
          JobTab()
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 34.0),
          child: TabBar(
            controller: _controller,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: _kTabtextSize),
            tabs: <IconTab>[
              IconTab(
                icon: Icon(Icons.power_settings_new, color: _currentIndex == INDEX_JOB ? Colors.grey[900] : _KPrimaryColor),
                text: '职位',
                color: _currentIndex == INDEX_JOB ? _KPrimaryColor : Colors.grey[900]
              ),
              IconTab(
                icon: Icon(Icons.crop_original, color: _currentIndex == INDEX_COMPANY ? Colors.grey[900] : _KPrimaryColor),
                text: '公司',
                color: _currentIndex == INDEX_JOB ? _KPrimaryColor : Colors.grey[900]
              ),
              IconTab(
                icon: Icon(Icons.message, color: _currentIndex == INDEX_MESSAGE ? Colors.grey[900] : _KPrimaryColor),
                text: '消息',
                color: _currentIndex == INDEX_JOB ? _KPrimaryColor : Colors.grey[900]
              ),
              IconTab(
                icon: Icon(Icons.verified_user, color: _currentIndex == INDEX_MINE ? Colors.grey[900] : _KPrimaryColor),
                text: '我的',
                color: _currentIndex == INDEX_JOB ? _KPrimaryColor : Colors.grey[900]
              ),
            ],
          ),
        ),
      ),
    );
  }
}

