import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rugram/configuration/navigation/app_roter_configuration.dart';

class AppRouterWidget extends StatefulWidget {
  const AppRouterWidget({super.key});

  @override
  State<AppRouterWidget> createState() => _AppRouterWidgetState();
}

class _AppRouterWidgetState extends State<AppRouterWidget> {
  late GoRouter appRouter;

  @override
  void initState() {
    appRouter = AppRouterConfiguration.createRouter(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Rugramm',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
