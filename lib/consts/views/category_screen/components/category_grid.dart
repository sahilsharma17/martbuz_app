import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';
import 'package:martbuz_app/consts/views/category_screen/category_details.dart';

Widget CategoryGrid(){
  return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 14,
            crossAxisSpacing: 10,
            mainAxisExtent: 200,
          ), 
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(categoryImage[index], width: 200,height: 120, fit: BoxFit.cover,),
                      const Spacer(),
                      "${categoryTitle[index]}"
                      .text
                      .align(TextAlign.center)
                      .color(darkFontGrey)
                      .size(15)
                      .makeCentered(),
                      30.heightBox,
                      ],
                    )
                    .box
                    .roundedSM
                    .white
                    .padding(EdgeInsets.symmetric(horizontal: 5))
                    .clip(Clip.antiAlias)
                    .shadowXs
                    .make()
                    .onTap(() {
                      Get.to(() => CategoryDetails(title: categoryTitle[index],));
                    }),
            );
      }
  );
}