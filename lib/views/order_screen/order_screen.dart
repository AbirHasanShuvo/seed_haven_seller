import 'package:intl/intl.dart' as intl;
import 'package:seed_haven_seller/views/widgets/appbar_widget.dart';

import '../../const/const.dart';
import '../widgets/text_style.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(orders),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                20,
                (index) => ListTile(
                      onTap: () {},
                      tileColor: textfieldGrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      title: boldText(text: '9865432484', color: purpleColor),
                      subtitle: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: fontGrey,
                              ),
                              5.widthBox,
                              boldText(
                                  text: intl.DateFormat().add_yMd().format(
                                        DateTime.now(),
                                      ),
                                  color: fontGrey),
                             10.widthBox,
                              const Icon(
                                Icons.payment,
                                color: fontGrey,
                              ),
                              5.widthBox,
                              boldText(text: unpaid, color: red)
                            ],
                          )
                        ],
                      ),
                  trailing: boldText(text: '\$40.0', color: purpleColor, size: 16.0),
                    ).box.margin(const EdgeInsets.only(bottom: 4)).make()),
          ),
        ),
      ),
    );
  }
}
