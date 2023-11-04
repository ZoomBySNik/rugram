import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rugram/core/di/app_data_sources_provider.dart';
import 'package:rugram/core/di/app_repository_provider.dart';
import 'package:rugram/core/di/app_services.dart';

class AppProviders extends StatefulWidget {
  final AppServices appServices;
  final Widget child;

  const AppProviders({
    required this.appServices,
    required this.child,
    super.key,
  });

  @override
  State<AppProviders> createState() => _AppProvidersState();
}

class _AppProvidersState extends State<AppProviders> {
  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: widget.appServices,
      child: AppDataSourcesProvider(
        child: AppRepositoriesProvider(
          child: widget.child,
        ),
      ),
    );
  }
}
