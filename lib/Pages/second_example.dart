import 'package:flutter/material.dart';

import 'container.dart';

class ResponsiveUiTwo extends StatelessWidget {
  const ResponsiveUiTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    if (screenWidth < 600) {
      return const MobileLayout();
    } else if (screenWidth < 1200) {
      return const TabletLayout();
    } else {
      return const DesktopLayout();
    }
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Mobile Layout'),
        ),
      ),
      body: Column(
        children: [
          CustomContainer(
              height: height * 0.2,
              color: Colors.blue,
              text: 'Header',
              fontSize: width * 0.05),
          Expanded(
            child: CustomContainer(
                color: Colors.green,
                text: 'Main Content',
                fontSize: width * 0.05),
          ),
          CustomContainer(
              height: height * 0.1,
              color: Colors.amber,
              text: 'Footer',
              fontSize: width * 0.05)
        ],
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Tablet Layout'),
        ),
      ),
      body: Column(
        children: [
          CustomContainer(
              height: height * 0.2,
              color: Colors.blue,
              text: 'Header',
              fontSize: width * 0.04),
          Expanded(
            child: Row(
              children: [
                CustomContainer(
                    width: width * 0.3,
                    color: Colors.grey,
                    text: 'SideBar',
                    fontSize: width * 0.04),
                Expanded(
                    child: CustomContainer(
                        color: Colors.green,
                        text: 'MainContent',
                        fontSize: width * 0.04)),
              ],
            ),
          ),
          CustomContainer(
              height: height * 0.1,
              color: Colors.amber,
              text: 'Footer',
              fontSize: width * 0.04)
        ],
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Desktop Layout'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomContainer(
                height: height * 0.15,
                color: Colors.blue,
                text: 'Header',
                fontSize: width * .02),
            Expanded(
              child: Row(
                children: [
                  CustomContainer(
                      width: width * 0.20,
                      color: Colors.grey,
                      text: 'SideBar',
                      fontSize: width * 0.02),
                  Expanded(
                      child: CustomContainer(
                          color: Colors.green,
                          text: 'Main Content',
                          fontSize: width * .02)),

                  CustomContainer(
                      width: width * .20,
                      color: Colors.purple,
                      text: 'Extra SideBar',
                      fontSize: width * 8.02)
                ],
              ),
            ),
            CustomContainer(
                height: height * 0.2,
                color: Colors.amber,
                text: 'Footer',
                fontSize: width * 0.02)
          ],
        ),
      ),
    );
  }
}
