import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rugram/core/di/app_services.dart';
import 'package:rugram/data/remote_data_sources/post/post_data_source.dart';

class AppDataSourcesProvider extends StatefulWidget {
  final Widget child;

  const AppDataSourcesProvider({
    required this.child,
    super.key,
  });

  @override
  State<AppDataSourcesProvider> createState() => _AppDataSourcesProviderState();
}

class _AppDataSourcesProviderState extends State<AppDataSourcesProvider> {
  late final Dio dio;
  late final PostDataSource postDataSource;

  @override
  void initState() {
    dio = context.read<AppServices>().dio;
    initDataSources();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider.value(value: postDataSource),
      ],
      child: widget.child,
    );
  }

  void initDataSources() {
    postDataSource = PostDataSource(dio);
  }
}
