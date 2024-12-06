import '../../constants/images.dart';
import 'package:flutter/material.dart';

import '../../constants/text.dart';

class FlutterNewsPage extends StatelessWidget {
  const FlutterNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6caec9),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'Flutter',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text: ' News',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: const DecorationImage(
                  fit: BoxFit.fitHeight, image: NetworkImage(Images.news)),
            ),
          ),
          const Text(MyText.newsTitle,
              maxLines: 2,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              )),
          Text(MyText.newsDescription,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[600],
                fontWeight: FontWeight.bold,
              )),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: NetworkImage(
                  Images.facebook,
                  scale: 5,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.red,
                backgroundImage: Image.network(
                  // scale: 100,
                  Images.instagram,
                  alignment: Alignment.center,
                ).image,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: Image.network(
                  Images.flutter,
                  // fit: BoxFit.fitWidth,
                  scale: 5,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
