import 'package:flutter/material.dart';
import 'package:instagram_clone/features/menu/home/home_page.dart';
import 'package:instagram_clone/features/menu/profile/profile_page.dart';
import 'package:instagram_clone/util/image_path.dart';

class BaseMenuPage extends StatefulWidget {
  static const String router = '/base_menu_page';
  const BaseMenuPage({Key? key}) : super(key: key);

  @override
  State<BaseMenuPage> createState() => _BaseMenuPageState();
}

class _BaseMenuPageState extends State<BaseMenuPage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const <Widget>[
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
            ProfilePage()
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    imagePath('ic_home'),
                  ),
                  color: Colors.black,
                ),
                label: '',
                activeIcon: ImageIcon(
                  AssetImage(
                    imagePath('ic_home_selected'),
                  ),
                  color: Colors.black,
                ),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    imagePath('ic_search'),
                  ),
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    imagePath('ic_reels'),
                  ),
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    imagePath('ic_shop'),
                  ),
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      imagePathJpeg('ic_my_profile'),
                    ),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
