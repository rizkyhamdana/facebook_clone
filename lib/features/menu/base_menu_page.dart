import 'package:flutter/material.dart';
import 'package:instagram_clone/features/menu/home/home_page.dart';
import 'package:instagram_clone/features/menu/profile/profile_page.dart';

class BaseMenuPage extends StatefulWidget {
  static const String router = '/base_menu_page';
  const BaseMenuPage({Key? key}) : super(key: key);

  @override
  State<BaseMenuPage> createState() => _BaseMenuPageState();
}

class _BaseMenuPageState extends State<BaseMenuPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: _tabController.index == 0
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'facebook',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              )
            : null,
        toolbarHeight: _tabController.index == 0 ? null : 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                color: _tabController.index == 0 ? Colors.blue : Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_library_outlined,
                color: _tabController.index == 1 ? Colors.blue : Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.store_outlined,
                color: _tabController.index == 2 ? Colors.blue : Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_outline_rounded,
                color: _tabController.index == 3 ? Colors.blue : Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_outlined,
                color: _tabController.index == 4 ? Colors.blue : Colors.grey,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.brightness_5_sharp,
                color: _tabController.index == 5 ? Colors.blue : Colors.grey,
              ),
            ),
          ],
          onTap: (value) {
            setState(() {
              _tabController.index = value;
            });
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          HomePage(),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          ProfilePage(),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
        ],
      ),
    );
  }
}
