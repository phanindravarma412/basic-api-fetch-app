import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

import 'services_page.dart';

import 'package:fetch/services/buddyboss_api_service.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => BuddybossApiService.create(),
      dispose: (_, BuddybossApiService service) => service.client.dispose(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ServicesPage();
  }
}
