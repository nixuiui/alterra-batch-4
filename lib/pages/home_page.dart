import 'package:alterra_batch_4/chat_room.dart';
import 'package:alterra_batch_4/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../module.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final chatRooms = [
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      imageUrl: 'https://asset.kompas.com/crops/wIV0bpu8RrgFWtenO8TbcWJ9Cs0=/160x0:689x353/375x225/data/photo/2023/08/24/64e6b45d4dd77.jpeg',
      roomName: 'Lionel Messi', 
      lastChat: 'Holaaa', 
      lastChatAt: '17:00'
    ),
    ChatRoom(
      roomName: 'Bambang Pamungkas', 
      lastChat: 'Haloooo', 
      lastChatAt: '12:00'
    ),
    ChatRoom(
      imageUrl: 'https://img.a.transfermarkt.technology/portrait/big/8198-1685035469.png?lm=1',
      roomName: 'Ronaldo', 
      lastChat: 'Haloooo Brooo', 
      lastChatAt: '17:00'
    ),
  ];
  
  Module? selectedModule;

  var show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: show ? const Text('Alterra Academy') : const SizedBox(),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: ListView(
        children: [
          if(selectedModule?.title != null) GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              Get.toNamed(
                AppRoutes.courseDetail,
                arguments: selectedModule,
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  selectedModule!.type == 'video' ? const Icon(Icons.play_arrow) : const Icon(Icons.book),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(selectedModule!.title ?? ''),
                        Text('${selectedModule!.type} - ${selectedModule!.duration}'),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        selectedModule = null;
                      });
                    }, 
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
            ),
          ),
          const Divider(height: 0),
          ListView.separated(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            itemCount: chatRooms.length,
            separatorBuilder: (context, index) => const Divider(height: 1), 
            itemBuilder: (context, index) {
              final room = chatRooms[index];
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        color: Colors.yellow,
                        width: 40,
                        height: 40,
                        child: room.imageUrl != null ? Image.network(
                          room.imageUrl ?? '',
                          fit: BoxFit.cover,
                        ) : Center(child: Text(room.initialName)),
                      ),
                    ),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            room.roomName,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            room.lastChat,
                            style: const TextStyle(
                              color: Colors.grey
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      room.lastChatAt,
                      style: const TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              );
            }, 
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Stack(
              children: [
                Image.asset('assets/background.jpeg'),
                Positioned(
                  left: 16,
                  bottom: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          Navigator.pop(context);
                          final result = await Get.toNamed(
                            AppRoutes.courseList,
                            arguments: {
                              'name': 'Niki',
                              'gender': 'male'
                            }
                          );

                          if(result != null) {
                            final map = result as Map<String, dynamic>;
                            setState(() {
                              selectedModule = map['module'] as Module;
                            });
                          }
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'assets/messi.jpeg',
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      const Text(
                        'Niki Rahmadi Wiharto',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 8,),
                      const Text(
                        '085712341234',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: () {
                Get.toNamed(AppRoutes.webview);
              },
              leading: const Icon(Icons.play_arrow),
              title: const Text('Open Youtube'),
            ),
            const ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('New Secret Caht'),
            ),
            const ListTile(
              leading: Icon(Icons.campaign),
              title: Text('New Channel'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contacts'),
            ),
            const ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Invite Friends'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.campaign),
              title: Text('Telegram FAQ'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff517da2),
        onPressed: () {
          setState(() {
            show = !show;
          });
        },
        child: Icon(
          show ? Icons.visibility_off : Icons.visibility
        ),
      ),
    );
  }
}