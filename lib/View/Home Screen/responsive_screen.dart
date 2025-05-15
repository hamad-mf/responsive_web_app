import 'package:flutter/material.dart';
import 'package:responsive_web_app/View/responsive.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLaptop = Responsive.isLaptop(context);
    final isMobile = Responsive.isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI Example"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (isLaptop) {
            return Row(
              children: [
                // Sidebar
                // Container(
                //   width: 250,
                //   height: constraints.maxHeight,
                //   color: Colors.grey[200],
                //   child: const Center(child: Text("Sidebar")),
                // ),

                // Main Content (Scrollable if needed)
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Header", style: TextStyle(fontSize: 24)),
                            SizedBox(height: 20),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text("Main Content Area",
                                    style: TextStyle(fontSize: 18)),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text("Main Content Area",
                                    style: TextStyle(fontSize: 18)),
                              ),
                            ),
                            SizedBox(height: 20),
                            Container(
                              height: 300,
                              decoration: BoxDecoration(
                                color: Colors.purple[100],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text("Main Content Area",
                                    style: TextStyle(fontSize: 18)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            // Mobile Layout
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.blue[100],
                      padding: const EdgeInsets.all(16),
                      child:
                          const Text("Header", style: TextStyle(fontSize: 20)),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 200,
                      color: Colors.green[100],
                      child: const Center(child: Text("Main Content")),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 150,
                      color: Colors.orange[100],
                      child: const Center(child: Text("Extra Section")),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
