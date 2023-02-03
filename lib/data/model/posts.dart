class Posts {
  final String name;
  final String avatarPath;
  final String imagePath;
  final String caption;
  final int likes;

  Posts({
    required this.name,
    required this.avatarPath,
    required this.imagePath,
    required this.caption,
    required this.likes,
  });
}

List<Posts> generateListPosts = [
  Posts(
      name: 'Dominic Craft',
      avatarPath: 'ic_avatar1',
      imagePath: 'img_post1',
      caption:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... more copy goes here',
      likes: 100),
  Posts(
      name: 'Ilta Lobo',
      avatarPath: 'ic_avatar3',
      imagePath: 'img_post2',
      caption:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua... more copy goes here',
      likes: 58)
];
