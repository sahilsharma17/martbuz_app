import 'package:get/get.dart';
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/controllers/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      Container(color: Colors.blue),
      Container(color: Colors.amber),
      Container(color: Colors.purple),
      Container(color: Colors.cyan),
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