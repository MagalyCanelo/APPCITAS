import 'package:app/services/cita_provider.dart';
import 'package:app/services/user_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:app/pages/screen0.dart';
import 'package:app/services/noti_services.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await iniNotifications();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider(),
        ),
        // ChangeNotifierProvider<CitaProvider>(
        //   create: (_) => CitaProvider(),
        // ),
        ChangeNotifierProvider(
          create: (_) => CitaModel(),
        ),
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: Screen0(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
