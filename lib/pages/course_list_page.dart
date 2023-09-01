import 'package:alterra_batch_4/module.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';

class ProfilePage extends StatefulWidget {
  
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final images = [
    "https://akcdn.detik.net.id/community/media/visual/2023/08/30/cristiano-ronaldo-2_169.jpeg?w=600&q=90",
    "https://akcdn.detik.net.id/visual/2023/08/31/soccer-usa_169.jpeg?w=400&q=90",
    "https://cdn1-production-images-kly.akamaized.net/Pi2Wa01g32HkyEmNXXQTho50I-U=/1200x1200/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3647624/original/038894100_1638188392-085180300_1513657785-8.jpg"
  ];

  final buttonCarouselController = CarouselController();
  var sliderIndex = 0;

  final modules = [
    Module(
      title: 'Course Introduction',
      duration: '14 min',
      type: 'video'
    ),
    Module(
      title: 'Navigating Course',
      duration: '7 min',
      type: 'reading'
    ),
    Module(
      title: 'Course Introduction',
      duration: '13 min',
      type: 'reading'
    ),
  ];

  String? selectedMenu;
  String? name;
  String? gender;

  @override
  void initState() {
    final args = Get.arguments as Map<String, String>;
    name = args['name'];
    gender = args['gender'];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back)
        ),
        title: Text('Haloo, $name - $gender'),
        actions: [
          PopupMenuButton<String>(
            initialValue: selectedMenu,
            onSelected: (String item) {
              switch (item) {
                case 'menu1':
                  Get.offNamed(
                    AppRoutes.setting,
                  );
                  break;
                case 'menu2':
                  
                  break;
                case 'menu3':
                  
                  break;
                default:
              }
            },
            child: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'menu1',
                child: Text('Setting'),
              ),
              const PopupMenuItem<String>(
                value: 'menu2',
                child: Text('Item 2'),
              ),
              const PopupMenuItem<String>(
                value: 'menu3',
                child: Text('Item 3'),
              ),
            ],
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView.separated(
          itemCount: modules.length,
          separatorBuilder: (context, index) => const Divider(height: 1), 
          itemBuilder: (context, index) {
            final module = modules[index];
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                // Get.back(result: {
                //   "module":  module
                // });
                Get.toNamed(
                  AppRoutes.courseDetail,
                  arguments: module
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    module.type == 'video' ? const Icon(Icons.play_arrow) : const Icon(Icons.book),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(module.title ?? ''),
                          Text('${module.type} - ${module.duration}'),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.delete, color: Colors.blue),
                    ),
                  ],
                ),
              ),
            );
          }, 
        ),
      ),
    );
  }
}