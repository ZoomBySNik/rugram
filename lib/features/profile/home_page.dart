import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rugram/configuration/navigation/app_routes.dart';
import '../home/widgets/post_preview_card.dart';
import 'widgets/profile_info.dart';
import 'widgets/posts_preview_grid.dart';
import 'bloc/users_posts_cubit.dart';

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
        title: const Text('po_jizni_lox', style: TextStyle(fontWeight: FontWeight.bold,)),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 5),
          child: Row(
            children: [
              Icon(Icons.add_box_outlined, size: 32,),
              Icon(Icons.menu_rounded, size: 32,)],
          ),
        ),],
      ),
      body: SingleChildScrollView( child: Column(
        children: [
          ProfileInfo(),
          Column(children: [
            BlocBuilder<PostsCubit, PostsState>(
              bloc: postsCubit,
              builder: (context, state) {
                return switch (state) {
                  PostsLoadedState() => ListView.builder(
                    controller: scrollController,
                    itemCount: state.postsInfo.data.length,
                    prototypeItem: Padding(
                      padding: const EdgeInsets.only(top: 36),
                      child: PostPreviewCard(
                        postPreview: state.postsInfo.data.first,
                      ),
                    ),
                    itemBuilder: (context, index) {
                      return PostPreviewCard(
                        postPreview: state.postsInfo.data[index],
                      );
                    },
                  ),
                  _ => const Center(child: CircularProgressIndicator()),
                };
              },
            ),
          ],
          ),
        ],
      )
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
