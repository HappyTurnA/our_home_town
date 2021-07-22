import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hometown_theme.dart';
import 'welcome_page.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) => {runApp(MyApp())});
}

class MyApp extends StatelessWidget {
  var titleText = 'myapp';

  @override
  Widget build(BuildContext context) {
    final theme = HometownTheme.light();
    return MaterialApp(
      theme: theme,
      title: 'Hometown',
      home: const WelcomePage()
      );
  }
}
