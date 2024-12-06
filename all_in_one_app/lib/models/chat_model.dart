import '../constants/chat/massages.dart';
import '../constants/chat/names.dart';
import '../constants/chat/random_images.dart';
import '../constants/chat/times.dart';

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});

  static List<ChatModel> getChatModels() {
    List<ChatModel> chatModel = [];
    for (int i = 0; i < 10; i++) {
      chatModel.add(
        ChatModel(
          name: RandomNames.names[i],
          message: RandomMassages.massages[i],
          time: RandomTimes.times[i],
          avatarUrl: RandomImages.images[i],
        ),
      );
    }
    return chatModel;
  }
}
