import 'package:martbuz_app/consts/consts.dart';

Widget backgroundWidget({required Widget child}) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(imgBackground),
        fit: BoxFit.fill,
      ),
    ),
    child: child,
  );
}