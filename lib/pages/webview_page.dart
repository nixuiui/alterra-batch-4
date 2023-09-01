import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({super.key});

  @override
  State<WebviewPage> createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {

  final progress = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Youtube'),
      ),
      body: Column(
        children: [
          Obx(() => Visibility(
            visible: progress.value > 0 && progress.value < 100,
            child: LinearProgressIndicator(
              value: progress.value/100,
            ),
          )),
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse("https://youtube.com")),
              onWebViewCreated: (controller) {},
              onProgressChanged: (controller, progress) {
                this.progress.value = progress;
                print('progress: $progress');
              },
            ),
          ),
        ],
      ),
    );
  }
}