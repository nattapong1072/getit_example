import 'package:get_it/get_it.dart';
import 'package:getit_example/feature/post/data/post_datasource.dart';
import 'package:getit_example/feature/post/data/post_local_datasource.dart';
import 'package:getit_example/feature/post/data/post_repository.dart';
import 'package:getit_example/feature/post/domain/get_post_list_usecase.dart';
import 'package:getit_example/feature/post/presenter/post_presenter.dart';

class PostLocator {
  static setup() {
    GetIt.I.registerFactory<PostDataSource>(() => PostLocalDataSource(),
        instanceName: "PostLocalDataSource");
    GetIt.I.registerFactory<PostRepository>(() => DefaultPostRepository(
        GetIt.I.get<PostDataSource>("PostLocalDataSource")));
    GetIt.I.registerFactory<GetPostListUseCase>(
        () => DefaultGetPostListUseCase(GetIt.I.get<PostRepository>()));
    GetIt.I.registerFactory<PostPresenter>(
        () => DefaultPostPresenter(GetIt.I.get<GetPostListUseCase>()));
  }
}
