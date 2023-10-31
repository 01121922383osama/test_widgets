import 'package:flutter/material.dart';

import 'list_of_name_images.dart';

class BodyChatPage extends StatefulWidget {
  const BodyChatPage({super.key});

  @override
  State<BodyChatPage> createState() => _BodyChatPageState();
}

class _BodyChatPageState extends State<BodyChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: names.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(images[index]),
          ),
          title: Text(names[index]),
          subtitle: Text(subtitles[index]),
        );
      },
    );
  }
}
