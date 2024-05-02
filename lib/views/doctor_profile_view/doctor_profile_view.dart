import 'package:get/get.dart';
import 'package:med_check/consts/consts.dart';
import 'package:med_check/res/components/custom_button.dart';
import 'package:med_check/views/book_appointment_view/book_appointment_view.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppStyles.bold(
          title: "Doctor Name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset(AppAssets.imgSignup),
                    ),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyles.bold(
                            title: "Doctor Name",
                            color: AppColors.textColor,
                            size: AppSizes.size14,
                          ),
                          AppStyles.bold(
                            title: "Category",
                            color: AppColors.textColor.withOpacity(0.5),
                            size: AppSizes.size12,
                          ),
                          const Spacer(),
                          VxRating(
                            selectionColor: AppColors.yellowColor,
                            onRatingUpdate: (value) {},
                            maxRating: 5,
                            count: 5,
                            value: 4,
                            stepInt: true,
                          )
                        ],
                      ),
                    ),
                    AppStyles.bold(
                      title: "See all reviews",
                      color: AppColors.blueColor,
                      size: AppSizes.size12,
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: AppStyles.bold(
                        title: "Phone Number",
                        color: AppColors.textColor,
                      ),
                      subtitle: AppStyles.normal(
                        title: "2345678935",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12,
                      ),
                      trailing: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.yellowColor,
                          ),
                          child: Icon(
                            Icons.phone,
                            color: AppColors.whiteColor,
                          )),
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "About",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "This is the about section of a Doctor.",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Address",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "Address of Doctor.",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Working Time",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "9:00 AM to 12:00 PM",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Services",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "This is the section of a Doctor.",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButtom(
            buttonText: "Book an Appointment",
            onTap: () {
              Get.to(() => const BookAppointmentView());
            }),
      ),
    );
  }
}
