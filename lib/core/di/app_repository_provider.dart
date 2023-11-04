import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppRepositoriesProvider extends StatefulWidget {
  final Widget child;

  const AppRepositoriesProvider({
    required this.child,
    super.key,
  });

  @override
  State<AppRepositoriesProvider> createState() =>
      _AppRepositoriesProviderState();
}

class _AppRepositoriesProviderState extends State<AppRepositoriesProvider> {
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [],
    //   child: widget.child,
    // );

    return widget.child;
  }
}
