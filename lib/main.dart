import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:web_admin_page/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: kIsWeb || Platform.isIOS
          ? FirebaseOptions(
              apiKey: "AIzaSyARtU6oyaAxj3-GINZA6s-NBd8ESGVmHB4",
              projectId: "e-commerce-app-71ee6",
              storageBucket: "e-commerce-app-71ee6.appspot.com",
              messagingSenderId: "355982020441",
              appId: "1:355982020441:web:f46305dead6e77070b8648",
            )
          : null);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainScreen(),
      builder: EasyLoading.init(),
    );
  }
}
