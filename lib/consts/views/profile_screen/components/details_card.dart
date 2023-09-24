import 'package:martbuz_app/consts/consts.dart';

Widget detailsCard(width, String? count, String? title){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!
      .text
      .color(darkFontGrey)
      .size(16)
      .fontFamily(bold)
      .make(),

      5.heightBox,

      title!
      .text
      .color(darkFontGrey)
      .fontFamily(semibold)
      .make(),
    ],
  )
  .box
  .white
  .rounded
  .width(width)
  .height(90)
  .shadowSm
  .padding(const EdgeInsets.all(4.0))
  .make();
}