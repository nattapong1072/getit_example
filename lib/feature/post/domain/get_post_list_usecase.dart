import 'package:getit_example/core/usecase.dart';
import 'package:getit_example/feature/post/data/post_repository.dart';
import 'package:getit_example/feature/post/domain/post.dart';

abstract class GetPostListUseCase extends UseCase<Null, List<Post>> {}

class DefaultGetPostListUseCase implements GetPostListUseCase {
  final PostRepository _postRepository;

  DefaultGetPostListUseCase(this._postRepository);

  @override
  List<Post> execute(Null parameter) {
    return _postRepository.getPostList();
  }
}
