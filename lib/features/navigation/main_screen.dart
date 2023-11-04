import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rugram/configuration/navigation/app_routes.dart';

class MainScreen extends StatefulWidget {
  final Widget child;

  const MainScreen({
    required this.child,
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static final navigationRoutes = [
    AppRoutes.home,
    AppRoutes.search,
    AppRoutes.video,
    AppRoutes.cart,
    AppRoutes.profile,
  ];

  int get currentNavigationIndex {
    final location = GoRouterState.of(context).uri.path;

    final index = navigationRoutes.indexWhere(
      (element) => location.startsWith(element.path),
    );

    if (index.isNegative) {
      return 0;
    }

    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: SafeArea(
        child: widget.child,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.black87),
        unselectedIconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.5),
        ),
        currentIndex: currentNavigationIndex,
        onTap: onChangePage,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.video_collection),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }

  void onChangePage(index) {
    context.goNamed(navigationRoutes[index].name);
  }
}
