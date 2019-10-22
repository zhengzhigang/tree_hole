import 'package:flutter/material.dart';
import 'package:boss/app/model/job.dart';
import 'package:boss/app/item/job_list.dart';

class JobTab extends StatefulWidget {
  @override
  _JobTabState createState() => _JobTabState();
}

class _JobTabState extends State<JobTab> {
  List<Job> _jobs = [];

  @override
  void initState() {
    super.initState();
    getJobList();
  }

  void getJobList () {
    setState(() {
      _jobs = Job.fromJson('''
        {
          "list": [
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            },
            {
              "name": "架构师(Android)",
              "cname": "蚂蚁金服",
              "size": "B轮",
              "salary": "25k-45k",
              "username": "Claire",
              "title": "HR"
            }
          ]
        }
      ''');
    });
  }

  Widget buildJobItem(BuildContext context, int index) {
    Job job = _jobs[index];

    var jobItem = InkWell(
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
      child: JobListItem(job),
    );
    return jobItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 245),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Android',
          style: TextStyle(
            fontSize: 20.0, color: Colors.white
          )
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return buildJobItem(context, index);
              },
              childCount: _jobs.length
            ),
          )
        ],
      )
    );
  }
}