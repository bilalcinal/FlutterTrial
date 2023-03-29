import 'package:firstproject/101/icon_learn.dart';
import 'package:firstproject/101/image_learn.dart';
import 'package:flutter/material.dart';

class TablearnView extends StatefulWidget {
  const TablearnView({super.key});

  @override
  State<TablearnView> createState() => _TablearnViewState();
}

class _TablearnViewState extends State<TablearnView>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);
          }),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: TabBar(controller: _tabController, tabs: const [
              Tab(
                text: 'Page1',
              ),
              Tab(
                text: 'Page2',
              )
            ]),
          ),
          appBar: AppBar(),
          body: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: const [ImageLearnView(), IconLearnView()]),
        ));
  }
}
