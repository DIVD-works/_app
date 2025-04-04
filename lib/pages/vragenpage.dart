import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/empty-screen.dart';

class VragenPage extends StatefulWidget {
  const VragenPage({super.key});

  @override
  State<VragenPage> createState() => _VragenPageState();
}

class _VragenPageState extends State<VragenPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            print('Loading progress: $progress%');
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          onWebResourceError: (WebResourceError error) {
            print('Web resource error: ${error.description}');
          },
        ),
      )
      ..setBackgroundColor(const Color(0x00000000)) 
      ..enableZoom(true)
      ..loadRequest(Uri.parse('https://form.jotform.com/250672969917070')); 
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8, 
              child: WebViewWidget(controller: controller),
            ),
          ],
        ),
      ),
    );
  }
}
