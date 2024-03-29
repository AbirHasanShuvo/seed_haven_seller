import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/views/messages_screen/chat_screen.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: boldText(text: messages, size: 16.0, color: fontGrey),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                  20,
                  (index) => ListTile(
                        onTap: () {
                          Get.to(() => ChatScreen());
                        },
                        leading: const CircleAvatar(
                          backgroundColor: purpleColor,
                          child: Icon(
                            Icons.person,
                            color: white,
                          ),
                        ),
                        title: boldText(text: 'Username', color: fontGrey),
                        trailing: normalText(text: '10:45', color: darkGrey),
                        subtitle: normalText(
                            text: 'last message....', color: darkGrey),
                      )),
            ),
          )),
    );
  }
}
