import 'package:get/get_navigation/get_navigation.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'consts/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: darkFontGrey,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: whiteColor, 
            fontFamily: bold,
            fontSize: 20, // Adjust the font size as needed
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
