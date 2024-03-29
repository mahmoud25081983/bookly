import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/reops/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
     getIt.get<ApiService>()
    ),
  );

}
