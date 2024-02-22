import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

Widget ourButton({title, color = purpleColor, onPress}) {
  return ElevatedButton(
    onPressed: onPress,
    child: normalText(text: title, size: 16.0),
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        //the above thing i need to do for all the button of mine
        primary: color,
        padding: const EdgeInsets.all(12.0)),
  );
}
