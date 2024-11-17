import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;

    // Define breakpoints
    if (screenWidth < 600) {
      return MobileLayout();
    } else if (screenWidth < 1200) {
      return TabletLayout();
    } else {
      return DesktopLayout();
    }
  }
}

class MobileLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Layout')),
      body: Center(
        child: Text(
          'This is a mobile layout',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
      ),
    );
  }
}

class TabletLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tablet Layout')),
      body: Center(
        child: Text(
          'This is a tablet layout',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.04),
        ),
      ),
    );
  }
}

class DesktopLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Desktop Layout')),
      body: Center(
        child: Text(
          'This is a desktop layout',
          style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03),
        ),
      ),
    );
  }
}
