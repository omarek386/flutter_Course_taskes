import 'package:flutter/material.dart';

import '../../../models/chat_model.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
    required this.chatModel,
  });

  final List<ChatModel> chatModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(chatModel[index].avatarUrl),
              ),
            ),
            title: Text(chatModel[index].name),
            subtitle:
                Text("${chatModel[index].message}  ${chatModel[index].time}"),
            trailing: const Icon(Icons.check_circle_outline),
          );
        },
      ),
    );
  }
}
