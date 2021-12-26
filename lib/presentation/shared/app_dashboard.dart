import 'package:flutter/material.dart';
import 'package:todo_app/presentation/views/view_todo/todo_home_view.dart';
import 'package:todo_app/utilities/utilities.dart';

class AppDashboard extends StatefulWidget {
  @override
  _AppDashboardState createState() => _AppDashboardState();
}

class _AppDashboardState extends State<AppDashboard>
    with WidgetsBindingObserver {
  PageController _pageController = PageController();
  List<Widget>? dashboardPages;
  int currentPage = 0;
  void onItemSelected(int index) {
    _pageController.jumpToPage(
      index,
    );
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance!.addObserver(this);

    dashboardPages = [
      TodoHomeView(),
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: dashboardPages!,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onItemSelected,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.navyBlue,
          elevation: 80,
          selectedItemColor: AppColors.grey,
          unselectedItemColor: AppColors.containerColor,
          selectedFontSize: 14.0,
          currentIndex: currentPage,
          unselectedLabelStyle: AppTextStyles.unselectedItembottomNavStyle,
          selectedLabelStyle: AppTextStyles.selectedItembottomNavStyle,
          unselectedFontSize: 14.0,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 6),
                  child: Icon(Icons.list)),
              label: 'Todo',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 6),
                child: Icon(Icons.check),
              ),
              label: 'Done',
            ),
          ],
        ),
      ),
    );
  }
}
