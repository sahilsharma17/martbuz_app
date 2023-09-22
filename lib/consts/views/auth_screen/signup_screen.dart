import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/widgets_common/background_widget.dart';
import 'package:martbuz_app/consts/widgets_common/button_widget.dart';
import 'package:martbuz_app/consts/widgets_common/custom_textfield.dart';

import '../../widgets_common/app_logo_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen
({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(image:imgBackground,child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Sign Up to $appname"
            .text
            .fontFamily(bold)
            .white
            .size(18)
            .make(),
            10.heightBox,
            Column(
              children: [
                customTextfield(title: name, hint: nameHint),
                customTextfield(title: email, hint: emailHint),
                customTextfield(title: password, hint: passwordHint),
                customTextfield(title: confirmPassword, hint: passwordHint),

                20.heightBox,

                button(title: signup, color: redColor, textColor: whiteColor, onPress: (){})
                .box
                .width(context.screenWidth - 50)
                .make(),

                20.heightBox,

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    alreadyHaveAcc.text.color(fontGrey).make(),
                    TextButton(
                        onPressed: (){
                          Get.back();
                        }, 
                        child: 
                        login
                        .text
                        .make()
                        )
                  ],
                ),
                20.heightBox,
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