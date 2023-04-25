import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeedWidget extends StatelessWidget {
  const FeedWidget({
    super.key,
    required this.index,
    required this.nickName,
    required this.feed,
  });

  final int index;
  final String nickName;
  final String feed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFCACCD1),
            width: 8,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: CachedNetworkImageProvider(
                        'https://picsum.photos/14$index',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nickName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '${Random().nextInt(10)}d · ',
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF66676A),
                              ),
                            ),
                            Image.asset(
                              'asset/icons/earth.png',
                              width: 10,
                              color: const Color(0xFF66676A),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.more_horiz,
                      color: Color(0xFF66676A),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'asset/icons/close.png',
                      width: 17,
                      color: const Color(0xFF66676A),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
            ),
            child: Text(feed),
          ),
          const SizedBox(
            height: 12,
          ),
          CachedNetworkImage(
            imageUrl: 'https://picsum.photos/40$index',
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'asset/icons/like.png',
                      width: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      Random().nextInt(100).toString(),
                      style: const TextStyle(
                        color: Color(0xFF66676A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '${Random().nextInt(50)} comments · ',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF66676A),
                      ),
                    ),
                    Text(
                      '${Random().nextInt(10)} shares',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF66676A),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              color: const Color(0xFFCACCD1),
              height: 0.5,
              width: double.infinity,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/icons/like_button.png',
                      width: 18,
                      color: const Color(0xFF58585A),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Like',
                      style: TextStyle(
                        color: Color(0xFF58585A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/icons/comment.png',
                      width: 18,
                      color: const Color(0xFF58585A),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Comment',
                      style: TextStyle(
                        color: Color(0xFF58585A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/icons/share.png',
                      width: 18,
                      color: const Color(0xFF58585A),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Share',
                      style: TextStyle(
                        color: Color(0xFF58585A),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
