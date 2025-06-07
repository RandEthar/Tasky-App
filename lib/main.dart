import 'package:flutter/material.dart';
import 'package:tasky_app/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard ());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardView()
    );
  }
}
