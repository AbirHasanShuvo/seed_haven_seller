import 'package:intl/intl.dart' as intl;
import 'package:seed_haven_seller/views/widgets/dashboard_button.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';
import '../../const/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: boldText(text: dashboard, color: fontGrey, size: 16.0),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              dashboardButton(context,
                  title: products, count: '60', icon: icProducts),
              dashboardButton(context,
                  title: orders, count: '15', icon: icOrders)
            ]),
            10.heightBox,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              dashboardButton(context,
                  title: rating, count: '60', icon: icStar),
              dashboardButton(context,
                  title: totalSales, count: '15', icon: icOrders),
            ]),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popular, color: fontGrey, size: 16.0),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                  3,
                  (index) => ListTile(
                        onTap: () {},
                        leading: Image.asset(
                          imageProduct,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        title: boldText(text: 'Product Title', color: fontGrey),
                        subtitle: normalText(text: '\$40.0', color: darkGrey),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
