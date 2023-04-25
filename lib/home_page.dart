import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook/widgets/feed_widget.dart';
import 'package:facebook/widgets/story_widget.dart';
import 'package:flutter/material.dart';

List<String> storyList = [
  'Honey Locks',
  'Rosie',
  'Ghoulie',
  'Grumpy',
  'Hammer',
  'Raindrop',
];

List<String> feedNickList = [
  'Anvil',
  'Snow White',
  'Pansy',
  'Double Bubble',
  'Braveheart',
  'Dork',
  'Cinnamon',
  'Cannoli',
  "Sweet 'n Sour",
  'Chip',
];

List<String> feedList = [
  'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
  "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
  "It has survived not only five centuries,",
  "but also the leap into electronic typesetting, remaining essentially unchanged.",
  "It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,",
  "and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  "Contrary to popular belief, Lorem Ipsum is not simply random text.",
  "It has roots in a piece of classical Latin literature from 45 BC,",
  "a Latin professor at Hampden-Sydney College in Virginia,",
];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      CachedNetworkImageProvider('https://picsum.photos/100'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.7),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'asset/icons/photos.png',
                  width: 23,
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFCACCD1),
            height: 8,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storyList.length,
                  itemBuilder: (context, index) {
                    return StoryWidget(
                      index: index,
                      storyNickName: storyList[index],
                    );
                  }),
            ),
          ),
          Container(
            color: const Color(0xFFCACCD1),
            height: 8,
            width: double.infinity,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: feedList.length,
              itemBuilder: (context, index) {
                return FeedWidget(
                  index: index,
                  nickName: feedNickList[index],
                  feed: feedList[index],
                );
              })
        ],
      ),
    );
  }
}
