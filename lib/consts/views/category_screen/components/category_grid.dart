import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';

Widget CategoryGrid(){
  return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 12,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 14,
            crossAxisSpacing: 10,
            mainAxisExtent: 180,
          ), 
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(categoryImage[index], width: 100,height: 120, fit: BoxFit.cover,),
                      const Spacer(),
                      "${categoryTitle[index]}".text.semiBold.align(TextAlign.center).color(darkFontGrey).size(15).make(),
                      15.heightBox,
                      ],
                    )
                    .box
                    .roundedSM
                    .white
                    .padding(EdgeInsets.symmetric(horizontal: 5))
                    .clip(Clip.antiAlias)
                    .shadowXs
                    .make(),
            );
      }
  );
}