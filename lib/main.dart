
import 'package:flutter/material.dart';
import 'package:tasky_app/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
      DevicePreview(
    enabled:true,
    builder: (context) => const ResponsiveDashBoard (), // Wrap your app
  ),
    
    
    );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme:const TextTheme(
          bodyMedium: TextStyle(
        
            color: Colors.white,
          ),
        
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardView()
    );
  }
}
