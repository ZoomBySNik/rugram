import 'package:dio/dio.dart';
import 'package:rugram/data/remote_data_sources/models/list_model.dart'
    as source_source_list_model;
import 'package:rugram/data/remote_data_sources/models/post_preview.dart'
    as source_post_preview;
import 'package:rugram/domain/models/list_model.dart';
import 'package:rugram/domain/models/post_create.dart';
import 'package:rugram/domain/models/post_preview.dart';

class PostDataSource {
  final Dio dio;

  PostDataSource(this.dio);

  Future<ListModel<PostPreview>> getPosts({int? page}) async {
    final result = await dio.get(
      '/post',
      queryParameters: {'page': page},
    );

    final model = source_source_list_model.ListModel.fromJson(result.data)
        .toEntity<PostPreview>(
      (a) => source_post_preview.PostPreview.fromJson(a).toEntity(),
    ) as ListModel<PostPreview>;

    return model;
  }

  Future<void> getPostsByUser() async {}

  Future<void> getPostsByTag() async {}

  Future<void> getPostById() async {}

  Future<void> createPost(PostCreate postCreate) async {}

  Future<void> updatePost(PostCreate postCreate) async {}

  Future<void> deletePost(PostCreate postCreate) async {}
}
