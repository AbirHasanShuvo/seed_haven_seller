import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: boldText(text: 'Product Title', color: fontGrey, size: 16.0),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
                height: 350,
                aspectRatio: 16 / 9,
                autoPlay: true,
                itemCount: 3,
                viewportFraction: 1.0,
                //this viewportion makes image full screen
                itemBuilder: (context, index) {
                  return Image.asset(
                    imageProduct,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                }),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: 'Product title', color: fontGrey, size: 16.0),
                  10.heightBox,
                  Row(
                    children: [
                      boldText(text: 'Category', color: fontGrey, size: 16.0),
                      10.widthBox,
                      normalText(
                          text: 'Subcategory', color: fontGrey, size: 16.0)
                    ],
                  ),
                  10.heightBox,
                  VxRating(
                    isSelectable: false,
                    // value: double.parse(data['p_rating']),
                    value: 3.0,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    maxRating: 5,
                  ),
                  10.heightBox,
                  boldText(text: "\$300.0", size: 18.0, color: red),
                  20.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 100,
                              child: boldText(
                                text: 'Color',
                                color: fontGrey,
                              )),
                          // 'Color: '.text.color(textfieldGrey).make()),
                          Row(
                            children: List.generate(
                              3,
                              (index) => VxBox()
                                  .size(40, 40)
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  // .color(Color(
                                  //         data['p_colors'][index])
                                  //     .withOpacity(1.0))
                                  .margin(
                                      const EdgeInsets.symmetric(horizontal: 4))
                                  .make()
                                  .onTap(() {}),
                            ),
                          )
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),

                      //quantity row
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            // child: 'Quantity: '
                            //     .text
                            //     .color(textfieldGrey)
                            //     .make()

                            child: boldText(
                              text: 'Quantity',
                              color: fontGrey,
                            ),
                          ),
                          normalText(
                            text: '20 items',
                            color: fontGrey,
                          ),
                        ],
                      ),
                    ],
                  ).box.padding(const EdgeInsets.all(8)).make(),
                  const Divider(),
                  20.heightBox,
                  boldText(
                    text: 'Description',
                  ),
                  10.heightBox,
                  boldText(
                    text: 'Description of this item',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
