import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instagram_clone/data/model/posts.dart';
import 'package:instagram_clone/data/model/stories.dart';
import 'package:instagram_clone/util/image_path.dart';
import 'package:instagram_clone/util/spacing.dart';

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
            Image.asset(
              imagePath('ic_logo_text'),
              height: 28,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_like'),
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
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_messenger'),
                      ),
                      size: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
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
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.2)),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              width: 72,
                              height: 72,
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
                              padding: const EdgeInsets.only(left: 4, right: 4),
                              width: 80,
                              child: const Text(
                                'Your story',
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 92,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.only(left: 0, right: 8),
                          itemCount: listStories.length,
                          itemBuilder: (context, index) {
                            return _buildListStories(listStories[index]);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: listPosts.length,
                itemBuilder: (context, index) {
                  return _buildListPosts(listPosts[index]);
                },
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget _buildListStories(Stories story) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          margin: const EdgeInsets.only(left: 4),
          height: 72,
          width: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.red.shade800,
                Colors.yellow.shade600,
              ],
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(4),
            width: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                imagePathJpg(story.avatarPath),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 4),
          width: 80,
          child: Text(
            story.name,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  Widget _buildListPosts(Posts post) {
    return Container(
      margin: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          imagePathJpg(post.avatarPath),
                        ),
                      ),
                    ),
                    const HorizontalSpacing(
                      width: 8,
                    ),
                    Text(
                      post.name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  width: 24,
                  height: 20,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      size: 24,
                    ),
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            imagePath(post.imagePath),
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                            imagePath('ic_like'),
                          ),
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const HorizontalSpacing(),
                    SizedBox(
                      width: 28,
                      height: 28,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(2),
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage(
                            imagePath('ic_comment'),
                          ),
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const HorizontalSpacing(),
                    SizedBox(
                      width: 28,
                      height: 28,
                      child: MaterialButton(
                        padding: const EdgeInsets.all(2),
                        onPressed: () {},
                        child: ImageIcon(
                          AssetImage(
                            imagePath('ic_share'),
                          ),
                          size: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 28,
                  height: 28,
                  child: MaterialButton(
                    padding: const EdgeInsets.all(2),
                    onPressed: () {},
                    child: ImageIcon(
                      AssetImage(
                        imagePath('ic_bookmark'),
                      ),
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              '${post.likes} Likes',
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          const VerticalSpacing(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              post.caption,
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      imagePathJpeg('ic_my_profile'),
                    ),
                  ),
                ),
                const HorizontalSpacing(
                  width: 8,
                ),
                const Expanded(
                  child: Text(
                    'Add comment...',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
