import 'package:martbuz_app/consts/consts.dart';

Widget backgroundWidget({image, required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}