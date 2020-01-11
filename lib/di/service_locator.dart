import 'package:get_it/get_it.dart';
import 'package:getit_example/feature/post/post_locator.dart';

final GetIt locator = GetIt.I;

void setupLocator() {
  PostLocator.setup();
}
