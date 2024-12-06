import 'package:flutter/material.dart';

import '../../../models/chat_model.dart';

class StroyBox extends StatelessWidget {
  const StroyBox({
    super.key,
    required this.chatModel,
  });

  final List<ChatModel> chatModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(chatModel[index].avatarUrl),
              ),
            ),
          );
        },
      ),
    );
  }
}
