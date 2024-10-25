import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app_test/ui/views/home_view/home_view.dart';
import 'package:social_app_test/ui/views/main_view/main_controller.dart';
import 'main_view_widget/bottom_navigation_widget.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  MainController controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBody: true,
      backgroundColor:Colors.yellow,
      resizeToAvoidBottomInset: false,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller.pageViewController,
        children: const [HomeView()],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationWidget(
          bottomNavigationEnum: controller.selected.value,
          onTap: (selectedEnum, pageNumber) {
            controller.animatedToPage(selectedEnum, pageNumber);
          },
        ),
      ),
    );
  }
}
