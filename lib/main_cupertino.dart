import 'package:flutter/cupertino.dart';

import 'cupertino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Belajar Version Control Git',
      theme: CupertinoThemeData.raw(Brightness.light, null, null, null, null, null, null),
      debugShowCheckedModeBanner: false,
      home: MyCupertinoPage(),
    );
  }
}
