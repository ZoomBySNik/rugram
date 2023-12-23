import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rugram/features/profile/widgets/profile_info.dart';
import 'package:rugram/data/remote_data_sources/profile/profile_data_source.dart';
import 'package:rugram/features/home/bloc/posts_cubit.dart';
import '../../domain/models/user_preview.dart';

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key? key}) : super(key: key);

  @override
  _MyProfilePage createState() => _MyProfilePage();
}

class _MyProfilePage extends State<MyProfilePage>
    with TickerProviderStateMixin {
  late final ProfileDataSource profileDataSource;
  late final PostsCubit postsCubit;
  TextEditingController nameController = TextEditingController();
  String nickname = "...";
  late UserPreview user;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: Text(
            nickname.toLowerCase().replaceAll(' ', '_'),
            style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
          ),
          actions: const [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add_box_outlined,
                    size: 26,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu_outlined,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ProfileInfo(
                    nickname: nickname,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () => _editProfile(),
                            style: ButtonStyle(
                                backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 0))
                            ),
                            child: const Text('Изменить', style: TextStyle(height: 0),)),
                        TextButton(
                            onPressed: () { },
                            style: ButtonStyle(
                                backgroundColor:  MaterialStateProperty.all<Color>(Colors.black12),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 0))
                            ),
                            child: const Text('Поделиться профилем', style: TextStyle(height: 0),)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverFillRemaining(
              child: BlocBuilder<PostsCubit, PostsState>(
                  bloc: postsCubit,
                  builder: (context, state) {
                    return switch (state) {
                      PostsLoadedState() => GridView.builder(
                          shrinkWrap: true,
                          itemCount: state.postsInfo.data.length,
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 3,
                            childAspectRatio: 1,
                          ),
                          itemBuilder: (context, index) {
                            return Image.network(
                              state.postsInfo.data[index].image,
                              width: double.infinity,
                              height: double.infinity,
                              fit: BoxFit.cover,
                            );
                          }),
                      _ => const Center(child: CircularProgressIndicator()),
                    };
                  }),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    postsCubit = PostsCubit(context.read())..initWithTag(tag: "person");
    profileDataSource = context.read<ProfileDataSource>();
    init();
    // loadImages();
  }

  Future<void> init() async {
    final usersInfo = await profileDataSource.getProfiles();
    user = usersInfo.data[10];
    nickname = user.firstName;
    setState(() {});
  }

  Future<void> update({required String name}) async {
    final updatedUser =
    await profileDataSource.updateProfile(profileId: user.id, name: name);
    nickname = updatedUser.firstName;
    setState(() {});
  }

  void _editProfile() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Редактирование профиля'),
          content: TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: 'Новое имя'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                update(name: nameController.text);
                Navigator.pop(context);
              },
              child: const Text('Сохранить'),
            ),
          ],
        );
      },
    );
  }

  void showFullScreenImage(String imageUrl) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Image.network(
              imageUrl,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
