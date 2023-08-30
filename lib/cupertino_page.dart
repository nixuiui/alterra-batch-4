import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCupertinoPage extends StatefulWidget {
  const MyCupertinoPage({super.key});

  @override
  State<MyCupertinoPage> createState() => _MyCupertinoPageState();
}

class _MyCupertinoPageState extends State<MyCupertinoPage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: CupertinoNavigationBar(
        middle: Text('Halaman Beranda'),
        trailing: Icon(Icons.add),
      ),
      child: Center(
        child: Text(
          'Content',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}