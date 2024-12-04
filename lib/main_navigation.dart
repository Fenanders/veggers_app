import 'package:flutter/material.dart';
import 'package:veggers_app/coming_soon_page.dart';
import 'package:veggers_app/features/dashboard/presentation/pages/dashboard_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  dynamic selected = 0;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: false,
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          margin: const EdgeInsets.all(16.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selected,
              backgroundColor: const Color(0xFF628B4B),
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              elevation: 5,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: (index) {
                controller.jumpToPage(index);
                setState(() {
                  selected = index;
                });
              },
              items: [
                bottomNavigationBarItem(
                    icon: "home", label: "Dashboard", index: 0),
                bottomNavigationBarItem(
                    icon: "bitcoin", label: "Coming Soon", index: 1),
                bottomNavigationBarItem(
                    icon: "chart", label: "Coming Soon", index: 2),
                bottomNavigationBarItem(
                    icon: "siram", label: "Coming Soon", index: 3),
                bottomNavigationBarItem(
                    icon: "user", label: "Coming Soon", index: 4),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          DashboardPage(),
          ComingSoonPage(),
          ComingSoonPage(),
          ComingSoonPage(),
          ComingSoonPage(),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(
      {required String icon, required String label, required int index}) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected == index ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Image.asset(
          "assets/icons/${icon.toLowerCase()}.png",
          color: selected == index ? const Color(0xFF384F2B) : Colors.white,
        ),
      ),
      label: label,
    );
  }
}
