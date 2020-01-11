import 'package:getit_example/feature/post/domain/get_post_list_usecase.dart';
import 'package:getit_example/feature/post/domain/post.dart';

abstract class PostPresenter {
  Future<List<Post>> getPostList();
}

class DefaultPostPresenter implements PostPresenter {
  final GetPostListUseCase _getPostListUseCase;

  DefaultPostPresenter(this._getPostListUseCase);

  @override
  Future<List<Post>> getPostList() {
    return Future.value(_getPostListUseCase.execute(null));
  }
}
