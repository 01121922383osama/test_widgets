import 'package:flutter/material.dart';
import 'package:test_widgets/list_of_name_images.dart';

class BodyChatPage extends StatelessWidget {
  const BodyChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:NeverScrollableScrollPhysics() ,
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
