import 'package:getit_example/feature/post/data/post_datasource.dart';
import 'package:getit_example/feature/post/domain/post.dart';

abstract class PostRepository {
  List<Post> getPostList();
}

class DefaultPostRepository implements PostRepository {
  final PostDataSource _postLocalDataSource;

  DefaultPostRepository(this._postLocalDataSource);

  @override
  List<Post> getPostList() {
    return _postLocalDataSource.getPostList();
  }
}
