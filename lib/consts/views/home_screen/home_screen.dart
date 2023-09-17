
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';
import 'package:martbuz_app/consts/views/home_screen/components/featured_category_btns.dart';
import 'package:martbuz_app/consts/views/home_screen/components/featured_product_card.dart';
import 'package:martbuz_app/consts/views/home_screen/components/product_grid.dart';
import 'package:martbuz_app/consts/widgets_common/home_btns.dart';
import 'package:martbuz_app/consts/widgets_common/search_bar/search_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: Container(
        child: Column(
          children: [

            HeightBox(20),
            MySearchBar(),
            HeightBox(10),
          
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  // swiper
                VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  height: 140,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  itemCount: sliderbrandList.length, 
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset(
                        sliderbrandList[index],
                        fit: BoxFit.fill,)
                        .box
                        .rounded.clip(Clip.antiAlias)
                        .shadowXs
                        .margin(const EdgeInsets.all(5))
                        .make(),
                    );
                }),
                15.heightBox,
            
                // 2 buttons today's deal, flash sale 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, (index) => 
                  homeButtons(
                    height: context.screenHeight * 0.15,
                    width: context.screenWidth / 2.5,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todaydeal : flashSale,
                    iconSize: 50.0,
                  )),
                ),
                15.heightBox,
            
                // swiper 2
                VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  height: 140,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  itemCount: sliderbrandList2.length, 
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset(
                        sliderbrandList2[index],
                        fit: BoxFit.fill,)
                        .box
                        .rounded.clip(Clip.antiAlias)
                        .shadowXs
                        .margin(const EdgeInsets.all(5))
                        .make(),
                    );
                }),
            
                15.heightBox,
                // 3 buttons topcategory, brand, topseller
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index) => 
                  homeButtons(
                    height: context.screenHeight * 0.12,
                    width: context.screenWidth / 3.5,
                    icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                    title: index == 0 ? topCategory : index == 1 ? brand : topSellers,
                    iconSize: 30.0,
                  )),
                ),
                15.heightBox,
            
                Align(
                  alignment: Alignment.centerLeft,
                  child: 
                  featuredCategories
                  .text.fontFamily(bold)
                  .size(20)
                  .color(darkFontGrey)
                  .make()
                ),
                15.heightBox,

                SingleChildScrollView(
                  scrollDirection : Axis.horizontal, 
                  child: Row(
                    children: List.generate(
                      3, 
                      (index) => Column(
                        children: [
                          featuredCategoryBtn(
                            title: featuredImagesTitle1[index], 
                            image: featuredImages1[index]
                          ),
                          10.heightBox,
                          featuredCategoryBtn(
                            title: featuredImagesTitle2[index], 
                            image: featuredImages2[index]
                          ),
                          5.heightBox,
                        ],
                      )
                    ),
                  ),
                ),

                15.heightBox,
                Container(
                  // height: context.screenHeight * 0.4,
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgBackground1),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredProducts
                      .text
                      .white
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                    
                    10.heightBox,
                    featuredProductCard(),
                    ],
                  ),
                ),
                10.heightBox,

                // swiper 3
                VxSwiper.builder(
                  aspectRatio: 16/9,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  height: 140,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 500),
                  itemCount: sliderbrandList2.length, 
                  itemBuilder: (context, index) {
                    return Container(
                      child: Image.asset(
                        sliderbrandList2[index],
                        fit: BoxFit.fill,)
                        .box
                        .rounded.clip(Clip.antiAlias)
                        .shadowXs
                        .margin(const EdgeInsets.all(5))
                        .make(),
                    );
                }),
                
                // All Product grid items
                10.heightBox,
                allProducts.text.bold.color(darkFontGrey).size(18).make(),
                ProductGrid(),
                ],
              ),
            ),
          )
          ]
      ),
    )
    );
  }
}