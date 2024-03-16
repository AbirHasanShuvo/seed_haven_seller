import 'package:get/get.dart';
import 'package:seed_haven_seller/const/const.dart';
import 'package:seed_haven_seller/controllers/auth_controller.dart';
import 'package:seed_haven_seller/views/home_screen/home.dart';
import 'package:seed_haven_seller/views/widgets/our_button.dart';
import 'package:seed_haven_seller/views/widgets/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AuthController());
    bool isLoading = false;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: purpleColor,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            normalText(
              text: welcome,
              size: 18.0,
            ),
            20.heightBox,
            Row(
              children: [
                Image.asset(
                  icLogo,
                  height: 70,
                  width: 70,
                )
                    .box
                    .border(color: white)
                    .rounded
                    .padding(const EdgeInsets.all(8.0))
                    .make(),
                10.widthBox,
                boldText(text: appname, size: 20.0),
              ],
            ),
            40.heightBox,
            normalText(text: loginto, size: 18.0, color: lightGrey),
            10.heightBox,
            Obx(
              () => Column(
                children: [
                  TextFormField(
                    controller: controller.emailController,
                    decoration: const InputDecoration(
                        // filled: true,
                        // fillColor: textfieldGrey,

                        hintText: emailHint,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: purpleColor,
                        )),
                  ),
                  10.heightBox,
                  TextFormField(
                    controller: controller.passwordController,
                    decoration: const InputDecoration(
                        // filled: true,
                        // fillColor: textfieldGrey,
                        hintText: passwordHint,
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: purpleColor,
                        )),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgotPassword.text.make()),
                  ),
                  20.heightBox,
                  SizedBox(
                      width: context.screenWidth - 100,
                      child: controller.isloading.value
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.red),
                            )
                          : ourButton(
                              title: login,
                              onPress: () async {
                                await controller
                                    .loginMethod(context: context)
                                    .then((value) {
                                  if (value != null) {
                                    VxToast.show(context, msg: 'Logged in');
                                    Get.offAll(() => const Home());
                                  }
                                });
                              })),
                ],
              )
                  .box
                  .white
                  .rounded
                  .outerShadowMd
                  .padding(const EdgeInsets.all(8.0))
                  .make(),
            ),
            10.heightBox,
            Center(
              child: normalText(text: anyProblem, color: lightGrey),
            ),
            const Spacer(),
            Center(
              child: boldText(text: credit),
            ),
            5.heightBox
          ],
        ),
      ),
    );
  }
}
