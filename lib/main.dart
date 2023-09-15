import 'package:get/get_navigation/get_navigation.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'consts/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent),
          fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}