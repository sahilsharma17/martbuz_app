import 'package:martbuz_app/consts/consts.dart';

Widget ProductGrid(){
  return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 280,
          ), 
          itemBuilder: (context, index) {
            return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgP1, width: 200,height: 200, fit: BoxFit.cover,),
                    const Spacer(),
                    "Laptop 8GB/512GB".text.semiBold.color(darkFontGrey).size(16).make(),
                    5.heightBox,
                    "50,000".text.bold.color(redColor).size(16).make(),
                    20.heightBox,
                    ],
        )
        .box
        .roundedSM
        .white
        .padding(EdgeInsets.symmetric(horizontal: 5))
        .shadowXs
        .make();
      }
  );
}