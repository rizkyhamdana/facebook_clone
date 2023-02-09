import 'package:flutter/material.dart';
import 'package:facebook_clone/util/image_path.dart';
import 'package:facebook_clone/util/spacing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      backgroundColor: Colors.blueGrey.shade100,
      body: Container(
        margin: EdgeInsets.zero,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Rizky Hamdana',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
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
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 160,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      imagePathJpg('fb_cover'),
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 16,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              width: 120,
                              height: 120,
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
                          ),
                          Positioned(
                            bottom: 0,
                            left: 120,
                            child: Container(
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
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 56,
                            right: 16,
                            child: Container(
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
                                  Icons.camera_alt,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 100,
                            right: 16,
                            child: Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(100)),
                              child: MaterialButton(
                                padding: EdgeInsets.zero,
                                shape: const CircleBorder(),
                                onPressed: () {},
                                child: const Icon(
                                  Icons.emoji_emotions,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rizky Hamdana',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const VerticalSpacing(),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.add_circle,
                                            color: Colors.white,
                                          ),
                                          HorizontalSpacing(
                                            width: 4,
                                          ),
                                          Text(
                                            'Add to story',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const HorizontalSpacing(
                                width: 8,
                              ),
                              Expanded(
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: MaterialButton(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    onPressed: () {},
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.edit,
                                          ),
                                          HorizontalSpacing(
                                            width: 4,
                                          ),
                                          Text(
                                            'Edit Profile',
                                          ),
                                        ],
                                      ),
                                    ),
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
                                    borderRadius: BorderRadius.circular(8)),
                                child: MaterialButton(
                                  padding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  onPressed: () {},
                                  child: const Icon(
                                    Icons.more_horiz,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpacing(),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(24)),
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Posts',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                          const HorizontalSpacing(
                            width: 8,
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Reels',
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const VerticalSpacing(),
                          Row(
                            children: const [
                              Icon(
                                Icons.access_time_filled,
                                color: Colors.blueGrey,
                              ),
                              HorizontalSpacing(
                                width: 8,
                              ),
                              Text(
                                'Joined on July 2013',
                              ),
                            ],
                          ),
                          const VerticalSpacing(),
                          Row(
                            children: const [
                              Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.blueGrey,
                              ),
                              HorizontalSpacing(
                                width: 8,
                              ),
                              Text(
                                'rizky_hamdana',
                              ),
                            ],
                          ),
                          const VerticalSpacing(),
                          Row(
                            children: const [
                              Icon(
                                Icons.link,
                                color: Colors.blueGrey,
                              ),
                              HorizontalSpacing(
                                width: 8,
                              ),
                              Text(
                                'rizkyhamdana.blogspot.com',
                              ),
                            ],
                          ),
                          const VerticalSpacing(),
                          Row(
                            children: const [
                              Icon(
                                Icons.more_horiz,
                                color: Colors.blueGrey,
                              ),
                              HorizontalSpacing(
                                width: 8,
                              ),
                              Text(
                                'See your About info',
                              ),
                            ],
                          ),
                          const VerticalSpacing(),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8)),
                            child: MaterialButton(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'Edit Public Details',
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
