import '../../const/const.dart';
import 'package:intl/intl.dart' as intl;
import '../../const/const.dart';
import '../widgets/text_style.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: products, color: fontGrey, size: 16.0),
        actions: [
          Center(
            child: boldText(
                text:
                intl.DateFormat('EEE, MMM d, ' 'yy').format(DateTime.now()),
                color: purpleColor),
          ),
          10.widthBox
        ],
      ),
    );
  }
}
