import 'package:flutter/material.dart';

import 'build_chat_page.dart';
import 'build_stause_widget.dart';
import 'search_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SearchPage(),
          ),
          SliverToBoxAdapter(
            child: BuildRowWidgetPage(),
          ),
          SliverFillRemaining(
            child: BodyChatPage(),
          ),
        ],
      ),
    );
  }
}
