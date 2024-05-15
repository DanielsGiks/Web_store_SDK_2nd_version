import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/Tickets/tickets.dart';

class myTabBar extends StatelessWidget {
  final TabController tabController;

  const myTabBar({
    Key? key,
    required this.tabController,

  }) : super(key: key);

  List<Tab> _buildCategoryTabs(){
    return TicketsCountry.values.map((country){
      return Tab(
        text: country.toString().split('.').last,
      );
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
