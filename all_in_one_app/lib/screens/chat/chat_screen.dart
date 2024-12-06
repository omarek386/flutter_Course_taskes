import 'package:flutter/material.dart';

import '../../constants/chat/random_images.dart';
import '../../models/chat_model.dart';
import '../widgets/chat/chat_list.dart';
import '../widgets/chat/search_box.dart';
import '../widgets/chat/stroy_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatModel> chatModel = ChatModel.getChatModels();

    return Scaffold(
      appBar: appBar,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SearchBox(),
          ),
          SliverToBoxAdapter(
            child: StroyBox(chatModel: chatModel),
          ),
          SliverToBoxAdapter(
            child: ChatList(chatModel: chatModel),
          ),
        ],
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      title: const Row(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(RandomImages.image1),
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Chats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
//  CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(),
//         ],
//       ),