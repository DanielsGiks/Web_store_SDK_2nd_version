import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sdk_school/Tab_bar/my_Tab_Bar.dart';

import '../Tab_bar/mySliverAppBar.dart';

class TicketsPage extends StatefulWidget {


  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}






class _TicketsPageState extends State<TicketsPage> with SingleTickerProviderStateMixin{
  @override
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();

  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MySliverAppBar(
            title: myTabBar(tabController: _tabController,), child: Text("Flights"),
          ),
          SliverList(delegate: SliverChildListDelegate([
          Container(color: Colors.black54, height: 80.0),
    Container(color: Colors.black12, height: 80.0),
    Container(color: Colors.black54, height: 80.0),
    Container(color: Colors.black12, height: 80.0),
          ]),
          )],
        //headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
      ),
    );
  }
}
