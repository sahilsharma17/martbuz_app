import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';
import 'package:martbuz_app/consts/views/auth_screen/signup_screen.dart';
import 'package:martbuz_app/consts/views/home_screen/home.dart';

import 'package:martbuz_app/consts/widgets_common/background_widget.dart';
import 'package:martbuz_app/consts/widgets_common/button_widget.dart';
import 'package:martbuz_app/consts/widgets_common/custom_textfield.dart';

import '../../widgets_common/app_logo_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Log in to $appname"
            .text
            .fontFamily(bold)
            .white
            .size(18)
            .make(),
            10.heightBox,
            Column(
              children: [
                customTextfield(title: email, hint: emailHint),
                customTextfield(title: password, hint: passwordHint),
                Align
                (alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: (){}, 
                    child: 
                    forgetPassword
                    .text
                    .make()
                    )
                    ),
                button(title: login, color: redColor, textColor: whiteColor, 
                onPress: (){
                  Get.to(() => Home());
                })
                .box
                .width(context.screenWidth - 50)
                .make(),

                10.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                10.heightBox,

                button(title: signup, color: redColor, textColor: whiteColor, 
                onPress: (){
                  Get.to(() => SignupScreen());
                })
                .box
                .width(context.screenWidth - 50)
                .make(),

                30.heightBox,

                "Log In with".text.color(fontGrey).make(),
                30.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: whiteColor,
                      radius: 30,
                      child: Image.asset(
                        socialIconList[index],
                        width: 35,),
                    ),
                  ),
                  ),
                ),
              ],
            )
            .box
            .white
            .rounded
            .padding(const EdgeInsets.all(16))
            .width(context.screenWidth - 80)
            .shadowSm
            .make(),
          ],
        ),
      ),
    ));
  }
}