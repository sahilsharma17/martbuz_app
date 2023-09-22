
import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/views/category_screen/item_details.dart';
import 'package:martbuz_app/consts/widgets_common/background_widget.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      image: imgCategoryDetailBg,
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                    6, 
                    (index) => "Formals for men"
                    .text
                    .fontFamily(semibold)
                    .color(darkFontGrey)
                    .size(15).align(TextAlign.center)
                    .makeCentered()
                    .box
                    .white
                    .size(140, 50)
                    .rounded
                    .margin(const EdgeInsets.symmetric(horizontal: 2))
                    .make()
                    ),
                ),
              ),

              Expanded(
                child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Container(
                  color: whiteColor,
                  child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 280,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                    ), 
                    itemBuilder: (context, index){
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
                        .outerShadowMd
                        .make()
                        .onTap(() {
                          Get.to(() => ItemDetails(title: "Dummy Item"));
                        });
                    })
                  ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}