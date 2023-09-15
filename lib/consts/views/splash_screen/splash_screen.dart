import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/views/auth_screen/login_screen.dart';
import 'package:martbuz_app/consts/widgets_common/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Screen changing method
  changeScreen(){
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 27, 27, 1),
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft,
            child: Image
            .asset(icSplashBg, width: 300,)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname
            .text
            .fontFamily(bold)
            .size(22)
            .white
            .make(),
            5.heightBox,
            appversion
            .text
            .white
            .make(),
            Spacer(),
            credits
            .text
            .white
            .fontFamily(semibold)
            .make(),
            30.heightBox,
          ],
        ),
      ),
    );
  }
}