import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({Key? key,
  required this.child,
  required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: true,
      //expandedHeight: 300,
      backgroundColor: Colors.black12,
      flexibleSpace: FlexibleSpaceBar(
        title: title,
      ),
    );
  }
}
