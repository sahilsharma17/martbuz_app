
import 'package:martbuz_app/consts/consts.dart';
import 'package:martbuz_app/consts/views/category_screen/components/category_grid.dart';
import 'package:martbuz_app/consts/widgets_common/background_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      image: imgBackground,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: "Category"
          .text
          .fontFamily(bold)
          .make(),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(12),
            child: CategoryGrid(),
          ),
        ),
      )
    );
  }
}