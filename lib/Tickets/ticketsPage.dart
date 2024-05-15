import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sdk_school/Tab_bar/my_Tab_Bar.dart';
import 'package:sdk_school/Tickets/Ticket_details_page.dart';
import 'package:sdk_school/Tickets/fakebaltic.dart';
import 'package:sdk_school/Tickets/tickets.dart';
import 'package:sdk_school/Widgets/components/my_tickets_tile.dart';

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
    _tabController = TabController(length: TicketsCountry.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  //sort out the list of tickets by country
  List<Tickets> _filterTicketsByCategory(TicketsCountry country, List<Tickets> fullTicketsList){
    return fullTicketsList.where((tickets) => tickets.country == country).toList();
  }
  // return list of tickets in the given country
  List<Widget> getTicketInThisCategory(List<Tickets> fullTicketsList){
    return TicketsCountry.values.map((country) {

      List<Tickets> countriesTickets = _filterTicketsByCategory(country, fullTicketsList);
      return ListView.builder(
        itemCount: countriesTickets.length,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final ticket = countriesTickets[index];
          return TicketsTile(
              ticket: ticket,
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TicketDetails(ticket: ticket))));

            ListTile(
      title: Text(countriesTickets[index].city,)
      );
        },
      );
    }).toList();
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            MySliverAppBar(
              title: myTabBar(tabController: _tabController,),
              child: Text("Flights"),
      
            ),
            Consumer<FakeBaltic>(
              builder: (context, country, child) => new SliverFillRemaining(
                child: TabBarView(
                    controller: _tabController,
                    children:
                      getTicketInThisCategory(country.flights),
                      // ListView.builder(
                      //     itemCount: 3,
                      //     itemBuilder: (context, index) =>Text("tab1")),
                      // ListView.builder(
                      //     itemCount: 3,
                      //     itemBuilder: (context, index) =>Text("tab2")),
                      // ListView.builder(
                      //     itemCount: 3,
                      //     itemBuilder: (context, index) =>Text("tab3")),
                ),
              ),
            ),
            // SliverList.builder(
            //     itemCount: 4,
            //     itemBuilder: (context, index) => Text("ITALY")),
      
      //       SliverList(delegate: SliverChildListDelegate([
      //       Container(color: Colors.black54, height: 80.0),
      // Container(color: Colors.black12, height: 80.0),
      // Container(color: Colors.black54, height: 80.0),
      // Container(color: Colors.black12, height: 80.0),
      //       ]),
      //       )
          ],
          //headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        ),
      
      ),
    );
  }
}
