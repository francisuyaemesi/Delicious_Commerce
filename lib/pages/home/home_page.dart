import 'package:delicious_commerce/pages/account/account_page.dart';
import 'package:delicious_commerce/pages/cart/cart_history.dart';
import 'package:delicious_commerce/pages/home/main_food_page.dart';
import 'package:delicious_commerce/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //late PersistentTabController _controller;

  List pages = [
    MainFoodPage(),
    Container(child: Center(child: Text('Next page'))),
    CartHistory(),
    AccountPage()
  ];

  void onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // @override
  // void initState() {
  //   _controller = PersistentTabController(initialIndex: 0);
  //   super.initState();
  // }

  // List<Widget> _buildScreens() {
  //   return [
  //     MainFoodPage(),
  //     Container(child: Center(child: Text('Next page'))),
  //     Container(child: Center(child: Text('Next next page'))),
  //     Container(child: Center(child: Text('Next next next page'))),
  //   ];
  // }

  //  List<PersistentBottomNavBarItem> _navBarsItems() {
  //   return [
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.home),
  //       title: ("Home"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.archivebox_fill),
  //       title: ("Archive"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.cart_fill),
  //       title: ("Cart"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //     PersistentBottomNavBarItem(
  //       icon: Icon(CupertinoIcons.person),
  //       title: ("Me"),
  //       activeColorPrimary: CupertinoColors.activeBlue,
  //       inactiveColorPrimary: CupertinoColors.systemGrey,
  //     ),
  //   ];
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.amberAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0.0,
        unselectedFontSize: 0.0,
        currentIndex: _selectedIndex,
        onTap: onTapNav,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.archive,
              ),
              label: 'history'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'me'),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return PersistentTabView(
  //     context,
  //     controller: _controller,
  //     screens: _buildScreens(),
  //     items: _navBarsItems(),
  //     handleAndroidBackButtonPress: true, // Default is true.
  //     resizeToAvoidBottomInset:
  //         true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
  //     stateManagement: true, // Default is true.
  //     hideNavigationBarWhenKeyboardAppears: true,
  //     padding: const EdgeInsets.only(top: 8),
  //     backgroundColor: Colors.grey.shade900,
  //     isVisible: true,
  //     animationSettings: const NavBarAnimationSettings(
  //       navBarItemAnimation: ItemAnimationSettings(
  //         // Navigation Bar's items animation properties.
  //         duration: Duration(milliseconds: 400),
  //         curve: Curves.ease,
  //       ),
  //       screenTransitionAnimation: ScreenTransitionAnimationSettings(
  //         // Screen transition animation on change of selected tab.
  //         animateTabTransition: true,
  //         duration: Duration(milliseconds: 200),
  //         screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
  //       ),
  //     ),
  //     confineToSafeArea: true,
  //     navBarHeight: kBottomNavigationBarHeight,
  //     navBarStyle:
  //         NavBarStyle.style1, // Choose the nav bar style with this property
  //   );
  // }
}
