import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

Widget chatBubble() {
  return Directionality(
    // textDirection:
    //     data['uid'] == currentUser!.uid ? TextDirection.rtl : TextDirection.ltr,

    textDirection: TextDirection.ltr,

    child: Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          // color: mycolor,
        color: purpleColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // '${data['msg']}'.text.size(16).white.make(),
          normalText(text: 'Your message here'),
          10.heightBox,
          // time.text.color(whiteColor.withOpacity(0.5)).make()
          normalText(text: '10:45pm')
        ],
      ),
    ),
  );
}
