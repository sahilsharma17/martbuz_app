import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/controllers/home_controller.dart';
import 'package:martbuz_app/consts/views/cart_screen/cart_screen.dart';
import 'package:martbuz_app/consts/views/category_screen/category_screen.dart';
import 'package:martbuz_app/consts/views/home_screen/home_screen.dart';
import 'package:martbuz_app/consts/views/profile_screen/profile_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navbarItems = [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: home,),
      BottomNavigationBarItem(icon: Icon(Icons.category) , label: categories),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_basket) , label: cart),
      BottomNavigationBarItem(icon: Icon(Icons.person_2) , label: profile),
    ];

    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: 
                navBody.elementAt(controller.currentIndex.value),
            ),
          ),
        ],
      ),
      bottomNavigationBar: 
      Obx(() =>
        BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          backgroundColor: whiteColor,
          selectedItemColor: redColor,
          unselectedItemColor: fontGrey,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          type: BottomNavigationBarType.fixed,
          items: navbarItems,
          onTap: (value) {
            controller.currentIndex.value = value;
          },
        ),
      )
    );
    
  }
}