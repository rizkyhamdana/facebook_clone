import 'package:facebook_clone/features/menu/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone/features/menu/home/home_page.dart';
import 'package:facebook_clone/util/image_path.dart';
import 'package:facebook_clone/util/spacing.dart';

class BaseMenuPage extends StatefulWidget {
  static const String router = '/base_menu_page';
  const BaseMenuPage({Key? key, this.pageIndex = 0}) : super(key: key);
  final int pageIndex;

  @override
  State<BaseMenuPage> createState() => _BaseMenuPageState();
}

class _BaseMenuPageState extends State<BaseMenuPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    setState(() {});
    _tabController = TabController(length: 6, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        elevation: 0,
        backgroundColor: Colors.white,
        title: _tabController.index == 0
            ? SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage(
                        imagePath('ic_fb_text'),
                      ),
                      size: 120,
                      color: Colors.blue,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(100)),
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: const CircleBorder(),
                            onPressed: () {},
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const HorizontalSpacing(
                          width: 8,
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(100)),
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: const CircleBorder(),
                            onPressed: () {},
                            child: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const HorizontalSpacing(
                          width: 8,
                        ),
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(100)),
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: const CircleBorder(),
                            onPressed: () {},
                            child: const Icon(
                              Icons.message_sharp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            : null,
        toolbarHeight: _tabController.index == 0 ? null : 0,
        bottom: TabBar(
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.video_library_outlined,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.store_outlined,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_outline_rounded,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_outlined,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.brightness_5_sharp,
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
      body: Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: TabBarView(
          controller: _tabController,
          physics: const BouncingScrollPhysics(),
          children: const <Widget>[
            HomePage(),
            Center(
              child: Text("This is Watch Page"),
            ),
            Center(
              child: Text("This is Marketplace Page"),
            ),
            ProfilePage(),
            Center(
              child: Text("This is Notification Page"),
            ),
            Center(
              child: Text("This is Setting Page"),
            ),
          ],
        ),
      ),
    );
  }
}
