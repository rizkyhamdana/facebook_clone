import 'package:flutter/material.dart';
import 'package:facebook_clone/data/model/posts.dart';
import 'package:facebook_clone/data/model/stories.dart';
import 'package:facebook_clone/util/image_path.dart';
import 'package:facebook_clone/util/spacing.dart';

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
            Container(
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
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(24),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: MaterialButton(
                          padding: const EdgeInsets.all(16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "What's on your mind?",
                              textAlign: TextAlign.left,
                            ),
                          )),
                    ),
                  ),
                  const HorizontalSpacing(
                    width: 8,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
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
            )
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey.shade100,
    );
  }
}
