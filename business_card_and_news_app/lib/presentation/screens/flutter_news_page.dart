import 'package:flutter/material.dart';

class FlutterNewsPage extends StatelessWidget {
  const FlutterNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  fontSize: 20,
                ),
              ),
              TextSpan(
                text: ' News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: NetworkImage(
                      'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/11/vincent-cyberpunk-2077.jpg?q=70&fit=crop&w=1140&h=&dpr=1')),
            ),
            // child: Image(
            //   image: NetworkImage(
            //       'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/11/vincent-cyberpunk-2077.jpg?q=70&fit=crop&w=1140&h=&dpr=1'),
            // ),
          ),
          Text('Cyberpunk 2077 Passes Another Incredible Sales Milestone'),
          Text(
              "Cyberpunk 2077 has breached the 30 million mark in terms of copies sold, as per developer CD Projekt Red's latest update. Additionally, the Phantom Liberty DLC, which expands upon Cyberpunk 2077's world, has also moved 8 million units since releasing a year ago.")
        ],
      ),
    );
  }
}
