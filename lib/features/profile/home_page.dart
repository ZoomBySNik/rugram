import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rugram/configuration/navigation/app_routes.dart';
import 'widgets/profile_info.dart';
import 'bloc/posts_cubit.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  late final ScrollController scrollController;
  late final PostsCubit postsCubit;

  get postPreview => null;

  @override
  void initState() {
    scrollController = ScrollController()..addListener(listenScroll);
    postsCubit = PostsCubit(context.read())..init();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar:  AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            // Переход на главную страницу
            context.goNamed(AppRoutes.home.name);
          },
        ),
        title: Text('Asdfa sgs'),
        actions: const [Icon(Icons.add_box_outlined, size: 32,), Icon(Icons.menu_rounded, size: 32,)],
      ),
      body: Column(
        children: [ProfileInfo()],
      )
    );
  }

  Future<void> listenScroll() async {
    final isPageEnd = scrollController.offset + 150 >
        scrollController.position.maxScrollExtent;

    if (isPageEnd) {
      await postsCubit.nextPage();
    }
  }
}
