import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/util/image_path.dart';
import 'package:instagram_clone/util/spacing.dart';

class ProfilePage extends StatefulWidget {
  static const String route = '/profile_page';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  'rizky_hamdana',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  width: 28,
                  height: 28,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 28,
                  height: 28,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_post'),
                      ),
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                const HorizontalSpacing(
                  width: 8,
                ),
                SizedBox(
                  width: 28,
                  height: 28,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: const Icon(
                      Icons.menu,
                      size: 24,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(4),
                      width: 76,
                      height: 76,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          imagePathJpeg('ic_my_profile'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          '1',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Posts',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          '1,884',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          '949',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: const Text(
                  'Rizky Hamdana',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                child: RichText(
                  text: const TextSpan(
                    text:
                        '•\nGoogle Certified AAD\nMobile Developer at PAC\nExternal Reviewer ',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                    children: [
                      TextSpan(
                        text: '@dicoding\n',
                        style: TextStyle(fontSize: 13, color: Colors.blue),
                      ),
                      TextSpan(
                        text: '•\n',
                        style: TextStyle(fontSize: 13),
                      ),
                      TextSpan(
                        text: 'rizkyhamdana.my.id/',
                        style: TextStyle(fontSize: 13, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpacing(
                height: 8,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                padding: const EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.grey, width: 0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: const Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: const Text(
                  'Edit profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 16, 8, 0),
                        padding: const EdgeInsets.all(4),
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            imagePathJpeg('ic_my_profile'),
                          ),
                        ),
                      ),
                      const VerticalSpacing(
                        height: 4,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: 80,
                        child: const Text(
                          'Certificate',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                        padding: const EdgeInsets.all(4),
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 32,
                          ),
                        ),
                      ),
                      const VerticalSpacing(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 80,
                        child: Text(
                          'New',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
