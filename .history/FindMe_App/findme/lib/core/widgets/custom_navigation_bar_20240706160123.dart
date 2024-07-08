import 'package:findme/Modules/Report_Moduls/report/view/screens/report_screen.dart';
import 'package:findme/screens/more_screen.dart';
import 'package:findme/screens/notification_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
   CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          label: '',
          icon: Column(
            children: [
              Icon(Icons.home),
              Text(
                "الرئيسية",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(Icons.report),
              Text(
                "إبلاغ",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(Icons.notifications),
              Text(
                "الإشعارات",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Icon(Icons.more),
              Text(
                "المزيد",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          label: '',
        ),
      ],
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex == index;
        });
        if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const ReportScreen();
            }),
          );
        }
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const NotificationScreen();
            }),
          );
        }
        if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const MorePage();
            }),
          );
        }
      },
    );
  }
}
