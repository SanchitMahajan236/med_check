import 'package:med_check/consts/consts.dart';
import 'package:med_check/res/components/custom_textfield.dart';
import 'package:med_check/res/components/custom_button.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

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
                  AppAssets.imgSignup,
                  width: 200,
                ),
                20.heightBox,
                AppStyles.bold(
                    title: AppStrings.signupNow,
                    size: AppSizes.size18,
                    alignment: TextAlign.center),
              ],
            ),
            30.heightBox,
            Expanded(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomTextField(hint: AppStrings.fullname),
                      10.heightBox,
                      CustomTextField(hint: AppStrings.email),
                      10.heightBox,
                      CustomTextField(hint: AppStrings.password),
                      20.heightBox,
                      CustomButtom(buttonText: AppStrings.signup, onTap: () {}),
                      20.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppStyles.normal(
                              title: AppStrings.alreadyHaveAccount),
                          8.widthBox,
                          GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: AppStyles.bold(title: AppStrings.login),
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
