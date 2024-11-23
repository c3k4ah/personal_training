import 'package:flutter/material.dart';

import 'features/watches_store/home_page.dart';
import 'features/watches_store/market_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initInjection();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WatchesProductsPage(),
    );
  }
}
