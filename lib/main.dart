import 'package:attendance_app/wrapper/auth_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBrlIMxmHPVjFCXsr9J2bFGw60Hnq2zdEU",
      appId: "1:76075784123:android:53902a0e965f5c54c3969e",
      messagingSenderId: "76075784123",
      projectId: "attendance-app-585d6"
  ),
    );
  runApp(AttendanecApp());
}

class AttendanecApp extends StatelessWidget {
  const AttendanecApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AttendanecApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
        )
      ),
      home: AuthWrapper(),
    );
  }
}