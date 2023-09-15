import 'package:martbuz_app/consts/consts.dart';

Widget homeButtons({String? title, icon, onPress, width, height, iconSize}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: iconSize,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).shadowXs.make();
}
