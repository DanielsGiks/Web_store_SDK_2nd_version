import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myTabBar extends StatelessWidget {
  final TabController tabController;

  const myTabBar({
    Key? key,
    required this.tabController,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: [
        Tab(child: Icon(CupertinoIcons.arrow_down),),
        Tab(child: Icon(CupertinoIcons.alarm),)
      ],
      ),
    );
  }
}
