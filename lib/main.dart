import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'banner_ad_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdMob Banner Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AdMob Banner Example'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const Text('Profile'),
              Container(
                padding: EdgeInsets.all(8), // Border width
                decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(48), // Image radius
                    child: Image.network(
                        'https://avatars.githubusercontent.com/u/110383694?v=4',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const Text(
                'Example App with AdMob Banner',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              BannerAdWidget(),
              const SizedBox(height: 20),
              const Text(
                'Container',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                height: 50,
                width: 500,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
