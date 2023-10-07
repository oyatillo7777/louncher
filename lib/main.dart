import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('URL Launcher Example'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: IconButton(
                  onPressed: () async {
                    final number = '+1152425242';
                    final url = 'tel:$number';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  icon: Icon(Icons.phone),
                ),
              ),
              Center(
                child: IconButton(
                  onPressed: () async {
                    final number = '+1152425242';
                    final url = 'sms:$number';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      print('Could not launch $url');
                    }
                  },
                  icon: Icon(Icons.sms),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
