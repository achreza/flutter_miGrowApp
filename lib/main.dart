import 'package:flutter/material.dart';
import 'package:flutter_migrow/Screens/login.dart';
import 'package:flutter_migrow/Screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_migrow/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider<AuthService>(
        create: (_) => AuthService(),
      ),
    ], child: SplashScreen());
  }
}
