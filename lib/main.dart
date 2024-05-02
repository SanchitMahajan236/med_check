import 'package:med_check/consts/consts.dart';
import 'package:get/get.dart';
import 'package:med_check/views/login_view/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.nunito,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}
