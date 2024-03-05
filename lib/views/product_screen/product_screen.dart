import 'package:seed_haven_seller/views/widgets/appbar_widget.dart';

import '../../const/const.dart';
import '../widgets/text_style.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: appbar(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: List.generate(
                20,
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
                      trailing: VxPopupMenu(
                          arrowSize: 0.0,
                          child: Icon(Icons.more_vert_rounded),
                          menuBuilder: () => Column(
                                children: List.generate(
                                  popupMenuTitles.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Row(
                                      children: [
                                        Icon(popupMenuIcons[index]),
                                        10.widthBox,
                                        normalText(
                                            text: popupMenuTitles[index],
                                            color: darkGrey)
                                      ],
                                    ).onTap(() {}),
                                  ),
                                ),
                              ).box.white.width(200).rounded.make(),
                          clickType: VxClickType.singleClick),
                    )),
          ),
        ),
      ),
    );
  }
}
