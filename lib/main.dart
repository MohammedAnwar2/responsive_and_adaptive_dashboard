import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_dashboard/view/dashboard_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ResposiveAdptiveDashBoard());
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const ResposiveAdptiveDashBoard(), // Wrap your app
  //   ),
  // );
}

class ResposiveAdptiveDashBoard extends StatelessWidget {
  const ResposiveAdptiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: ResonsiveDashBoardView(),
    );
  }
}
