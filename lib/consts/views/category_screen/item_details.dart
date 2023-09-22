import 'package:martbuz_app/consts/consts.dart';
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