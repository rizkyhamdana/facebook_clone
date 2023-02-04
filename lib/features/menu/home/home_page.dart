import 'package:flutter/material.dart';
import 'package:facebook_clone/data/model/posts.dart';
import 'package:facebook_clone/data/model/stories.dart';
import 'package:facebook_clone/util/image_path.dart';
import 'package:facebook_clone/util/spacing.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  static const String route = '/home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Stories> listStories = generateListStories;
  final List<Posts> listPosts = generateListPosts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            createPostSection(),
            const VerticalSpacing(),
            storiesSection(),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey.shade100,
    );
  }

  Widget createPostSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              imagePathJpeg('ic_my_profile'),
            ),
          ),
          const HorizontalSpacing(),
          Expanded(
            child: MaterialButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(24),
                  border: Border.all(color: Colors.grey),
                ),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "What's on your mind?",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          const HorizontalSpacing(
            width: 8,
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: MaterialButton(
              padding: const EdgeInsets.all(8),
              shape: const CircleBorder(),
              onPressed: () {},
              child: const Icon(
                Icons.panorama,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget storiesSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      color: Colors.white,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listStories.length + 1,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
        itemBuilder: (BuildContext context, int index) {
          return buildListStories(index);
        },
      ),
    );
  }

  Widget buildListStories(int index) {
    if (index == 0) {
      return Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.2),
          borderRadius: BorderRadiusDirectional.circular(8),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          imagePathJpeg('ic_my_profile'),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Create story',
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),
              child: MaterialButton(
                padding: EdgeInsets.zero,
                shape: const CircleBorder(),
                onPressed: () {},
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: 120,
        margin: const EdgeInsets.only(right: 16),
        child: Stack(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(1.0),
                borderRadius: BorderRadiusDirectional.circular(8),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    imagePathJpg(listStories[index - 1].avatarPath),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              child: Text(
                listStories[index - 1].name,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ],
        ),
      );
    }
  }
}
