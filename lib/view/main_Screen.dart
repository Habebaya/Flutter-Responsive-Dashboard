
import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/Responsive.dart';
import 'package:flutter_responsive_dashboard/view/dashboard/dashboard_screen.dart';
import 'package:flutter_responsive_dashboard/view/widget/side_menu.dart';
import 'package:flutter_responsive_dashboard/view_model/menu_provider.dart';
import 'package:provider/provider.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuProvider>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
               flex: 1,
                // and it takes 1/6 part of the screen
                child: const SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashBoardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
