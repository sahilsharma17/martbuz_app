import 'package:martbuz_app/consts/consts.dart';

Widget featuredProductCard({String? productName, productPrice, productImage}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
              children: List.generate(
                6, 
                (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(imgP1, width: 150, fit: BoxFit.cover,),
                    10.heightBox,
                    "Laptop 8GB/512GB".text.semiBold.color(darkFontGrey).size(16).make(),
                    5.heightBox,
                    "50,000".text.bold.color(redColor).size(16).make(),
                  ],
                )
                .box
                .white
                .roundedSM
                .margin(const EdgeInsets.symmetric(horizontal: 5))
                .padding(const EdgeInsets.all(8))
                .make(),
              ),
    ),
  );
}