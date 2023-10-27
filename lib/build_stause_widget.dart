import 'package:flutter/material.dart';
import 'package:test_widgets/list_of_name_images.dart';

class BuildRowWidgetPage extends StatelessWidget {
  const BuildRowWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 20),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                const SizedBox(width: 10),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(images[index]),
                    ),
                    Text(
                      names[index],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
