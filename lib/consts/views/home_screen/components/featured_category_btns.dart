import 'package:martbuz_app/consts/consts.dart';

Widget featuredCategoryBtn({String? title, image}){
  return Row(
    children: [
      Image.asset(image, width: 60, fit: BoxFit.fill,),
      10.widthBox,
      title!
      .text
      .size(10)
      .fontFamily(semibold)
      .color(darkFontGrey)
      .make()
    ],
  ).box
  .width(200)
  .margin(EdgeInsets.symmetric(horizontal: 4))
  .white
  .padding(EdgeInsets.all(4))
  .roundedSM.
  outerShadow
  .make();
}