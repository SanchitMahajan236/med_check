import 'package:med_check/consts/consts.dart';
import 'package:med_check/views/appointment_view/appointment_view.dart';
import 'package:med_check/views/category_view/category_view.dart';
import 'package:med_check/views/login_view/login_view.dart';
import 'package:med_check/views/settings_view/settings_view.dart';

import 'home_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List screensList = [
    const HomeView(),
    const AppointmentView(),
    const CategoryView(),
    const LoginView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white.withOpacity(0.5),
          selectedItemColor: AppColors.whiteColor,
          selectedLabelStyle: TextStyle(
            color: AppColors.whiteColor,
          ),
          selectedIconTheme: IconThemeData(color: AppColors.whiteColor),
          backgroundColor: AppColors.blueColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Appointments"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Doctor"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
