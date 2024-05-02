import 'package:med_check/consts/consts.dart';
import 'package:med_check/res/components/custom_button.dart';
import 'package:med_check/res/components/custom_textfield.dart';

class BookAppointmentView extends StatelessWidget {
  const BookAppointmentView({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyles.bold(title: "Select Appointment Day"),
              5.heightBox,
              const CustomTextField(hint: "Select Date"),
              10.heightBox,
              AppStyles.bold(title: "Select Appointment Time"),
              5.heightBox,
              const CustomTextField(hint: "Select Time"),
              20.heightBox,
              AppStyles.bold(title: "Mobile Number:"),
              5.heightBox,
              const CustomTextField(hint: "Enter you mobile number."),
              10.heightBox,
              AppStyles.bold(title: "Full Name:"),
              5.heightBox,
              const CustomTextField(hint: "Enter your name."),
              10.heightBox,
              AppStyles.bold(title: "Message:"),
              5.heightBox,
              const CustomTextField(hint: "Enter your message."),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButtom(buttonText: "Book an Appointment", onTap: () {}),
      ),
    );
  }
}
