import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/widgets/our_button.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

import 'components/order_place.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: boldText(text: 'Order Details', color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(title: 'Confirm Order', color: green, onPress: () {}),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Visibility(
              // visible: false,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldText(
                          text: 'Order status', size: 16.0, color: fontGrey),
                      SwitchListTile(
                        value: true,
                        onChanged: (value) {},
                        title: boldText(text: 'Placed', color: fontGrey),
                        activeColor: green,
                      ),
                      SwitchListTile(
                        value: true,
                        onChanged: (value) {},
                        title: boldText(text: 'Confirmed', color: fontGrey),
                        activeColor: green,
                      ),
                      SwitchListTile(
                        value: false,
                        onChanged: (value) {},
                        title: boldText(text: 'on Delivery', color: fontGrey),
                        activeColor: green,
                      ),
                      SwitchListTile(
                        value: false,
                        onChanged: (value) {},
                        title: boldText(text: 'Delivered', color: fontGrey),
                        activeColor: green,
                      ),
                    ],
                  )
                      .box
                      .outerShadowMd
                      .white
                      .border(color: lightGrey)
                      .roundedSM
                      .padding(const EdgeInsets.all(8.0))
                      .make(),
                  orderPlaceDetails(
                      title1: "Order Code",
                      title2: "Shipping Method",
                      d1: "data['order_code']",
                      d2: "data['shipping_method']"),
                  orderPlaceDetails(
                      title1: "Order Date",
                      title2: "Payment Method",
                      // d1: intl.DateFormat()
                      //     .add_yMd()
                      //     .format((data['order_date']).toDate()),
                      d1: DateTime.now(),
                      // d2: data['payment_method'] == 0
                      //     ? 'Paypal'
                      //     : data['payment_method'] == 1
                      //         ? 'Stripe'
                      //         : 'Cash on delivery',
                      d2: "Payment Method"),
                  orderPlaceDetails(
                      title1: "Payment Status",
                      title2: "Delivery Status",
                      d1: "Unpaid",
                      d2: "Order Placed"),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // "Shipping Address".text.fontFamily(semibold).make(),
                            boldText(
                                text: 'Shipping Address', color: purpleColor),
                            "{data['order_by_email']}".text.make(),
                            "{data['order_by_address']}".text.make(),
                            "{data['order_by_city']}".text.make(),
                            "{data['order_by_state']}".text.make(),
                            "{data['order_by_phone']}".text.make(),
                            "{data['order_by_postalcode']}".text.make(),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldText(
                                  text: 'Total Amount', color: purpleColor),
                              boldText(text: '', color: purpleColor)
                              // 'Total amount'.text.fontFamily(semibold).make(),
                              // "${data['total_amount']}"
                              //     .text
                              //     .color(redColor)
                              //     .fontFamily(semibold)
                              //     .make(),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
                  .box
                  .outerShadowMd
                  .white
                  .border(color: lightGrey)
                  .roundedSM
                  .make(),
            ),
            10.heightBox,
            const Divider(),
            boldText(text: 'Ordered Products', size: 16.0, color: purpleColor),
            10.heightBox,
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              //because we are in a column, that's why we needed to shrinkWrap : true
              children: List.generate(3, (index) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      orderPlaceDetails(
                          title1: "data['orders'][index]['title']",
                          title2: "data['orders'][index]['tprice']",
                          d1: "{data['orders'][index]['qty']}x",
                          d2: "Refundable"),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Container(
                          height: 20,
                          width: 30,
                          color: purpleColor,
                        ),
                      ),
                      const Divider()
                    ]);
              }).toList(),
            )
                .box
                .outerShadowMd
                .white
                .margin(const EdgeInsets.only(bottom: 4))
                .make(),
          ],
        ),
      ),
    );
  }
}
