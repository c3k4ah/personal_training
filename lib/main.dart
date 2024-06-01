import 'package:flutter/material.dart';

import 'features/complexe_ui/switch_btn.dart';

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
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SwitchBtn(),
    );
  }
}
