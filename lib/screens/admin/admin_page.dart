import 'package:cinefood/screens/admin/profile_admin.dart';
import 'package:cinefood/screens/admin/request_admin.dart';
import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_navigatorbar/custom_bottom_navigator_bar_admin.dart';

class AdminPage extends StatefulWidget {
  final String name;
  final String photo;
  
  AdminPage({
    required this.name,
    required this.photo,
  });
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AdminPage> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
      ).buildAppBar(),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          RequestAdmin(),
          ProfileAdmin(
            userPhotoUrl: widget.photo,
            userName: widget.name,
          ),
        ],
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBarAdmin(
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
