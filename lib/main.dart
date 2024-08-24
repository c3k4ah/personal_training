import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'features/complexe_ui/clip_path_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initInjection();
  runApp(
    DevicePreview(
      builder: (context) {
        return const MyApp();
      },
    ),
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
      home: const ComplexeUiPage(),
    );
  }
}
