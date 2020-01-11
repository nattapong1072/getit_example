import 'package:getit_example/feature/post/domain/post.dart';

abstract class PostDataSource {
  List<Post> getPostList();
}
