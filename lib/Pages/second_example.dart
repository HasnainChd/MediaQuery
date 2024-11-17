import 'package:flutter/material.dart';

class ResponsiveContainerUI extends StatelessWidget {
  const ResponsiveContainerUI({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // Mobile layout
      return MobileContainerLayout();
    } else if (screenWidth < 1200) {
      // Tablet layout
      return const TabletContainerLayout();
    } else {
      // Desktop layout
      return const DesktopContainerLayout();
    }
  }
}

class MobileContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        title: const Text('Mobile Layout'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2, // 20% of height
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.05, // 5% of width
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Center(
                child: Text(
                  'Main Content',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1, // 10% of height
            color: Colors.orange,
            child: Center(
              child: Text(
                'Footer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TabletContainerLayout extends StatelessWidget {
  const TabletContainerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tablet Layout'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3, // 30% of width
                  color: Colors.grey,
                  child: Center(
                    child: Text(
                      'Sidebar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'Main Content',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.orange,
            child: Center(
              child: Text(
                'Footer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DesktopContainerLayout extends StatelessWidget {
  const DesktopContainerLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desktop Layout'),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2, // 20% of width
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        'Sidebar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Main Content',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2, // 20% of width
                    color: Colors.purple,
                    child: Center(
                      child: Text(
                        'Extra Sidebar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: Colors.orange,
              child: Center(
                child: Text(
                  'Footer',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.02,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
