import 'package:chate_ui_app/models/chat_model.dart';
import 'package:chate_ui_app/presentation/widgets/chat_list.dart';
import 'package:chate_ui_app/presentation/widgets/search_box.dart';
import 'package:chate_ui_app/presentation/widgets/stroy_box.dart';
import 'package:flutter/material.dart';

import '../../constants/images.dart';

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