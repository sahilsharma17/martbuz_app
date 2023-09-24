import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/lists.dart';
import 'package:martbuz_app/consts/views/profile_screen/components/details_card.dart';
import 'package:martbuz_app/consts/widgets_common/background_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      image: imgBackground,
      child: Scaffold(
        appBar: AppBar(
          title: "Profile"
          .text
          .fontFamily(semibold)
          .color(whiteColor)
          .size(20)
          .make(),
          actions: [
            IconButton(
              icon: Icon(
                Icons.edit, 
                color: whiteColor
              ).onTap(() {
                
              }),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    
                    Image.asset(
                      imgProfile2, 
                      width: 70,
                      fit: BoxFit.cover,
                    )
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                    5.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "ABC User".text.white.fontFamily(semibold).make(),
                          "abcuser@example.com".text.fontFamily(semibold).make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: whiteColor,
                          width: 1.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {}, 
                      child: logout
                      .text
                      .white
                      .make()
                    )
                  ],
                ),
                20.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    detailsCard(context.screenWidth/3.5, "23", "in your cart"),
                    detailsCard(context.screenWidth/3.5, "45", "in your wishlist"),
                    detailsCard(context.screenWidth/3.5, "54", "your orders"),
                  ],
                ),

                40.heightBox,

                //buttons section

                ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: grey,
                    );
                  }, 
                  itemCount: profileBtnList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Image.asset(profileBtnIcons[index], width: 25),
                      title: profileBtnList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                    );
                  },
                )
                .box
                .rounded
                .shadowSm
                .padding(EdgeInsets.symmetric(horizontal: 10.0))
                .white
                .make(),

                40.heightBox,
                Column(
                  children: [
                    Image.asset(icAppLogo, width: 150),
                    10.heightBox,
                    appname.text.size(20).fontFamily(bold).make(),
                  ],
                )                 
              ],
            ),
          )
        ),
      )
    );
  }
}