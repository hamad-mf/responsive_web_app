import 'package:flutter/material.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/center_section.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/left_section.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/right_section.dart';
import 'package:responsive_web_app/View/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

   @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: Responsive.isLaptop(context) ? null : AppBar(),
      drawer:
          Responsive.isLaptop(context) ? null : Drawer(child: leftSection()),
      body: Row(
        children: [
          if (Responsive.isLaptop(context))
            Expanded(flex: 2, child: leftSection()),
          Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    centerSection(),
                    if (Responsive.isMobile(context)) rightSection()
                  ],
                ),
              )),
          if (!Responsive.isMobile(context))
            Expanded(flex: 3, child: rightSection()),
        ],
      ),
    );
  }
}