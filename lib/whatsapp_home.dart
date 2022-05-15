import 'package:challenge/Screens/calls_screen.dart';
import 'package:challenge/Screens/camera_screen.dart';
import 'package:challenge/Screens/chat_screen.dart';
import 'package:challenge/Screens/status_screen.dart';
import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
   late TabController _tabController;
    @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('WhatsApp'),
          actions:  const [
            Icon(Icons.search),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
             Icon(Icons.more_vert)
             ],
          elevation: 0.7,
          bottom:  TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            CameraScreen(),
            ChatScreen(), StatusScreen(), const CallScreen()],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('open chats'),
        ),

        );
  }
}
