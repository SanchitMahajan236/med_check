import 'package:get/get.dart';
import 'package:med_check/consts/consts.dart';
import 'package:med_check/res/components/custom_textfield.dart';
import 'package:med_check/res/components/custom_button.dart';
import 'package:med_check/views/signup_view/signup_view.dart';

import '../home_view/home.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.icLogin,
                  width: 200,
                ),
                20.heightBox,
                AppStyles.bold(
                    title: AppStrings.welcomeBack, size: AppSizes.size18),
                AppStyles.bold(title: AppStrings.weAreExcited),
              ],
            ),
            30.heightBox,
            Expanded(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextField(hint: AppStrings.email),
                      10.heightBox,
                      CustomTextField(hint: AppStrings.password),
                      20.heightBox,
                      Align(
                          alignment: Alignment.center,
                          child: AppStyles.normal(
                              title: AppStrings.forgetPassword)),
                      20.heightBox,
                      CustomButtom(
                          buttonText: AppStrings.login,
                          onTap: () {
                            Get.to(() => const Home());
                          }),
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppStyles.normal(title: AppStrings.dontHaveAccount),
                          8.widthBox,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const SignupView());
                            },
                            child: AppStyles.bold(title: AppStrings.signup),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
