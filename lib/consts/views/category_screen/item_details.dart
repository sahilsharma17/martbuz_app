import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';
import 'package:martbuz_app/consts/views/home_screen/components/featured_product_card.dart';
import 'package:martbuz_app/consts/widgets_common/button_widget.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({ Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.fontFamily(bold).color(darkFontGrey).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Swiper
                    VxSwiper.builder(
                      autoPlay: true,
                      height: 350,
                      itemCount: 3, 
                      aspectRatio: 16/9,
                      itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc1,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    }),

                    10.heightBox,
                    // Title and Price
                    title!
                    .text
                    .fontFamily(bold)
                    .size(16)
                    .color(darkFontGrey)
                    .make(),

                    10.heightBox,
                    //rating
                    VxRating(onRatingUpdate: (value){

                    }, 
                    normalColor: textfieldGrey, 
                    selectionColor: golden, 
                    size: 25,
                    count: 5,
                    stepInt: true,
                    ),

                    10.heightBox,
                    "₹2,000"
                    .text
                    .color(redColor)
                    .fontFamily(bold)
                    .size(18)
                    .make(),

                    10.heightBox,
                    Row( 
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Seller"
                              .text
                              .white
                              .fontFamily(semibold)
                              .make(),

                              5.heightBox,
                              "In House Brands"
                              .text
                              .fontFamily(semibold)
                              .size(16)
                              .color(darkFontGrey)
                              .make()
                            ],
                          )
                        ),
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded, 
                            color: darkFontGrey, 
                            size: 20
                          ),
                        ),
                      ],
                    )
                    .box
                    .height(60)
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .color(textfieldGrey)
                    .make(),

                    // Color selection
                    20.heightBox, 
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color"
                              .text
                              .color(fontGrey)
                              .make(),
                            ),
                            Row(
                              children: List.generate(
                                4, 
                                (index) => 
                                VxBox()
                                .size(30, 30)
                                .roundedFull
                                .color(Vx.randomPrimaryColor)
                                .margin(const EdgeInsets.symmetric(horizontal: 5))
                                .make()
                              ),
                            )
                          ],
                        )
                        .box
                        .padding(const EdgeInsets.all(8))
                        .make(),

                        // quantity selection
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quantity"
                              .text
                              .color(fontGrey)
                              .make(),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                                "0"
                                .text
                                .size(16)
                                .color(darkFontGrey)
                                .fontFamily(bold)
                                .make(),
                                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                                10.widthBox,
                                "(0 available)"
                                .text
                                .size(16)
                                .color(textfieldGrey)
                                .fontFamily(semibold)
                                .make(),
                              ],
                            ),
                          ],
                        )
                        .box
                        .padding(const EdgeInsets.all(8))
                        .make(),

                        // total price
                        Row(
                          children: [
                            SizedBox(
                              
                              width: 100,
                              child: "Total Price"
                              .text
                              .color(fontGrey)
                              .make(),
                            ),
                            "₹2,000".text.fontFamily(bold).color(redColor).make(),
                          ],
                        )
                        .box
                        .padding(const EdgeInsets.all(8))
                        .make()
                      ],
                    )
                    .box
                    .white
                    .shadowSm
                    .make(),

                    // Description
                    10.heightBox,
                    "Description"
                    .text
                    .fontFamily(bold)
                    .size(16)
                    .color(darkFontGrey)
                    .make(),

                    10.heightBox,
                    "Lorem ipsum dolor sit amet, consect....."
                    .text
                    .color(darkFontGrey)
                    .fontFamily(regular)
                    .make(),

                    //button section
                    10.heightBox,
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(
                        itemDetailsButtonList.length, 
                        (index) => ListTile(
                          title: itemDetailsButtonList[index]
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                          trailing: const Icon(Icons.arrow_forward),
                        )
                      ),
                    ),

                    //products you may like section
                    10.heightBox,
                    productsyoumaylike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),
                    featuredProductCard(),
    
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 160, // Adjust the width as needed
                    height: 60,
                    child: button(
                      onPress: () {},
                      color: redColor,
                      textColor: whiteColor,
                      title: 'Add to Cart',
                    ),
                  ),
                  SizedBox(
                    width: 160, // Adjust the width as needed
                    height: 60,
                    child: button(
                      onPress: () {},
                      color: golden,
                      textColor: whiteColor,
                      title: 'Buy Now',
                    ),
                  ),
                ],
              ),
              10.heightBox,
            ],
          )
        ],
      )
    );
  }
}