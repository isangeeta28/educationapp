import 'package:educationapp/views/profile_screen.dart';
import 'package:educationapp/views/shopping_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';
import 'homework_screenn.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({Key? key}) : super(key: key);

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {

  int activeTabIndex = 0;

  int tabIndex = 0;

  final List<Widget> tabScreens = [
    FirstScreen(),
    HomeWorkScreen(),
    ShoppingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // key: plannerHomeController.plannerscaffoldEy,
        // drawer: PlannerDrawerElement(),
        body: IndexedStack(
          index: activeTabIndex,
          children: tabScreens,
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            // boxShadow: <BoxShadow>[
            //   BoxShadow(color: Color(0xff997264), offset: Offset(0, -.3)),
            // ],
          ),
          child: BottomNavigationBar(
            //backgroundColor: const Color(0xff2B2929),
              unselectedFontSize: 0.0,
              selectedFontSize: 0.0,
              iconSize: 0.0,
             // backgroundColor: Colors.transparent,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              currentIndex: activeTabIndex,
              onTap: (index) {
                setState(() {
                  activeTabIndex = index;
                });
              },
              //tabIndex = index,
              // ontapBottomNav(
              // tabIndex: index, context: context),
              type: BottomNavigationBarType.fixed,
              unselectedLabelStyle: TextStyle(
                // fontFamily: "Avenir",
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
              selectedLabelStyle:  TextStyle(
                //fontFamily: "Avenir",
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.lightBlue,
              items: [
                buildTab(
                  // name: Localization.of(context)!.date!,
                    name: '',
                    activeiconAddress: 'assets/images/Home.png',
                     //iconAddress: 'assets/images/Home.png',
                    isActive:activeTabIndex == 0 ? true : false),
                buildTab(
                    name: '',
                    activeiconAddress: 'assets/images/Paper.png',
                   // iconAddress: 'assets/images/Home.png',
                    isActive:activeTabIndex == 1 ? true : false),
                buildTab(
                    name:'',
                    activeiconAddress: 'assets/images/shopping-cart-icon-transparent.png',
                   // iconAddress: 'assets/images/Home.png',
                    isActive:activeTabIndex == 2 ? true : false),
                buildTab(
                    name: '',
                    activeiconAddress: 'assets/images/profile-icon-9.png',
                    //iconAddress: 'assets/images/Home.png',
                    isActive:activeTabIndex == 3 ? true : false),
              ]),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildTab({required String name,required String activeiconAddress, required bool isActive}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 5, top: 5),
        child: SizedBox(
          //color: isActive ? Colors.red :  Colors.grey,
          height: 35,
          width: 35,
          child: Image.asset(
            activeiconAddress,
            color: isActive ? Colors.red :  Colors.grey,
            height: 22,
          )
         // color: isActive ? AppColors.backgroundpurple :  AppColors.icongrey,
          //isActive?
        ),
      ),
      label: name,
    );
  }
}
