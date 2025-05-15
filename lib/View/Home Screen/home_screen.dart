import 'package:flutter/material.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/center_section.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/left_section.dart';
import 'package:responsive_web_app/View/Home%20Screen/Widgets/right_section.dart';
import 'package:responsive_web_app/View/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLaptop = Responsive.isLaptop(context);
    bool isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: isLaptop ? null : AppBar(),
      drawer: isLaptop ? null : Drawer(child: const leftSection()),
      body: isLaptop
          ? Row(
              children: const [
                Expanded(flex: 2, child: leftSection()),
                Expanded(flex: 5, child: centerSection()),
                Expanded(flex: 3, child: rightSection()),
              ],
            )
          : SingleChildScrollView(
              child: Column(
                children: const [
                  leftSection(),
                  centerSection(),
                  rightSection(),
                ],
              ),
            ),
    );
  }
}
