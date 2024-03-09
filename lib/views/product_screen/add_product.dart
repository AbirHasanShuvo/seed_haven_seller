import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/product_screen/components/product_dropdown.dart';
import 'package:seed_haven_seller/views/product_screen/components/product_images.dart';
import 'package:seed_haven_seller/views/widgets/custom_textfield.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: boldText(text: 'Add product', size: 16.0),
        actions: [
          TextButton(
              onPressed: () {},
              child: boldText(
                text: 'Save',
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(hint: 'eg. BMW', label: 'Product name'),
              const SizedBox(
                height: 10,
              ),
              customTextField(
                  hint: 'eg. Nice Product', label: 'Description', isDesc: true),
              const SizedBox(
                height: 10,
              ),
              customTextField(hint: 'eg. \$100', label: 'Price'),
              const SizedBox(
                height: 10,
              ),
              customTextField(hint: 'eg. \$100', label: 'Price'),
              const SizedBox(
                height: 10,
              ),
              customTextField(hint: 'eg. 20', label: 'Quantity'),
              const SizedBox(
                height: 10,
              ),
              productDropdown(),
              const SizedBox(
                height: 10,
              ),
              productDropdown(),
              10.heightBox,
              boldText(text: 'Choose your product'),
              10.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  3,
                  (index) => productImages(label: index + 1),
                ),
              ),
              normalText(
                  text: 'First image will be on the display', color: lightGrey),
              10.heightBox,
              boldText(text: 'Choose product color'),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: List.generate(
                    9,
                    (index) => VxBox(child: normalText(text: index))
                        .color(Vx.randomPrimaryColor)
                        .roundedFull
                        .size(70, 70)
                        .make()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
