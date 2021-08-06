import 'package:flutter/material.dart';
import 'package:github_profile_finder/pages/tabs/about.dart';
import 'package:github_profile_finder/pages/tabs/repository.dart';

class TabViews extends StatefulWidget {
  const TabViews({Key? key}) : super(key: key);

  @override
  State<TabViews> createState() => _TabViewsState();
}

class _TabViewsState extends State<TabViews> with TickerProviderStateMixin {
  late TabController _tabController;

  List<Widget> _tabs = [
    Tab(text: "About"),
    Tab(text: "Repository"),
    // Tab(text: "Gists"),
    // Tab(text: "Followers"),
    // Tab(text: "Following"),
    // Tab(text: "Events")
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          controller: _tabController,
          labelColor: Colors.black,
          tabs: _tabs,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [About(), Repository()],
          ),
        ),
      ],
    );
  }
}
